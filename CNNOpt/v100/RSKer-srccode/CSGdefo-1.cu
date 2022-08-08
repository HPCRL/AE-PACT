#include <stdio.h>
#include <stdlib.h>
#include "common.h"

///Only support crsf format kernel
// TODO: ASSUME Input should be padded already
// x=w y=h z=k
__global__ void
conv_kernel(const TYPE *__restrict__ Input /*(C*H*W)*/,
            const TYPE *__restrict__ Kernel /*(F*C*R*S)*/,
            TYPE *__restrict__ Output /*(F*C*Y*X)*/) {

    /* This is an attempt to build on register optimization with shared memory with an alternate view of block orientation with a split c on global */

    // Calc'ed values and vars
    int k, h, w, c, i, j, r, s, row, kReg, kGlobal;
    // Total sizes of input for register operations
    int inTotalH = H+R-1;
    int inTotalW = W+S-1;

    // Compinsate for c block increase
    int blockIdxXAdjusted = blockIdx.x % BlockXCoverageNumber;

    // Find the upper corner in 3d space
    int kIndex = blockIdxXAdjusted * blockDim.x * T_k + threadIdx.x;
    //int wIndex = (blockIdx.y * blockDim.y + threadIdx.y) * T_w;
    //int hIndex = (blockIdx.z * blockDim.z + threadIdx.z) * T_h;
    int kWarpReach = 32 * T_k; // TODO: Should this be 32 exactly? - Yes?

    //int cRange = C / T_c; // TODO: Assume this will work since T_c is currently 1, but may not always be so
    //int inAdjustedTileH = T_h + R - 1; // Made into constants
    //int inAdjustedTileW = T_w + S - 1;

    //C offset calculation
    int cStart = (blockIdx.x / BlockXCoverageNumber) * CDivisionSize;
    int cBound = cStart + CDivisionSize;

    // Registers
    TYPE regOut[T_k][T_h][T_w]; //4x4x5
    TYPE regIn[inAdjustedTileH][inAdjustedTileW]; //6x7
    TYPE oneKern;

    // Zero out the registers
    for(k = 0; k < T_k; k++) {
        for (h = 0; h < T_h; h++) {
            for (w = 0; w < T_w; w++) {
                regOut[k][h][w] = 0.0f;
            }
        }
    }

    // Shared memory
    //int memTileH = T_h * blockDim.y + R - 1; // Made into constants T_h * B_h + R - 1
    //int memTileW = T_w * blockDim.x + S - 1; // T_w * B_w + S - 1
    int adjustedRowIndexMemTile = threadIdx.z * blockDim.y + threadIdx.y;
    int jumpDist = blockDim.z * blockDim.y;
    int hIndexBlock = blockIdx.z * blockDim.z * T_h;
    int wIndexBlock = blockIdx.y * blockDim.y * T_w;

    __shared__ TYPE shareBuffer_In[memTileH][memTileW]; // TODO: make non-square to avoid conflicts - if needed
    __shared__ TYPE shareBuffer_Out[OutBlockH][OutBlockW][OutBlockK+1];

    // Collapse all c into output
    for (c = cStart; c < cBound; c++) { // Assuming T_c is 1
        // Fill in shared memory - together
        for(row = adjustedRowIndexMemTile; row < memTileH; row += jumpDist) {
            if(threadIdx.x < memTileW) {
                shareBuffer_In[row][threadIdx.x] = Input[ (c)*inTotalH*inTotalW + (hIndexBlock + row)*inTotalW + (wIndexBlock + threadIdx.x) ];
            }
        }

        __syncthreads();

        // Fill regesters In - just ours
        for(i = 0; i < inAdjustedTileH; i++) {
            for(j = 0; j < inAdjustedTileW; j++) {
                regIn[i][j] = shareBuffer_In[threadIdx.z*T_h + i][threadIdx.y*T_w + j]; //jump
            }
        }
        
        // Use the input in regesters for all k in the tile
        kReg = 0;
#pragma unroll(1) // ReplaceLine 000001
        for (kGlobal = 0; kGlobal < kWarpReach; kGlobal+=32) { // 4
            // Do actual calculations
#pragma unroll(3) // ReplaceLine 000002
            for (r = 0; r < R; r++) { // 3
#pragma unroll(3) // ReplaceLine 000003
                for (s = 0; s < S; s++) { // 3
                    oneKern = Kernel[ (c)*R*S*K + (r)*S*K + (s)*K + (kIndex + kGlobal) ];
#pragma unroll(2) // ReplaceLine 000004
                    for (h = r; h < T_h + r; h++) { // 4
#pragma unroll(27) // ReplaceLine 000005
                        for (w = s; w < T_w + s; w++) { // 5
                            regOut[kReg][h-r][w-s] += regIn[h][w] * oneKern; // regin is 6x7=42 regout = 80
                        }
                    }
                }
            }
            kReg++; // RegisterK
        } // End k

        __syncthreads(); // Sync for next loop

    } // End c

    int kIndexTBlock = threadIdx.x;
    int hIndexTBlock = threadIdx.z * T_h;
    int wIndexTBlock = threadIdx.y * T_w;
    kWarpReach = 32;
    int kIndexBlock;

    for(k = 0; k < T_k; k++) {

        // Fill Out from Reg to shared mem
        for (h = 0; h < T_h; h++) {
            for (w = 0; w < T_w; w++) {
                shareBuffer_Out[hIndexTBlock + h][wIndexTBlock + w][kIndexTBlock] = regOut[k][h][w];
            }
        }

        __syncthreads();

        kIndexBlock = blockIdxXAdjusted * blockDim.x * T_k + k * 32;

        // Fill Out from shared memory
        for(kGlobal = 0; kGlobal < OutBlockK; kGlobal++) {
            for(row = adjustedRowIndexMemTile; row < OutBlockH; row += jumpDist) {
                if(threadIdx.x < OutBlockW) {
                    atomicAdd(&Output[ (kIndexBlock + kGlobal)*H*W + (hIndexBlock + row)*W + (wIndexBlock + threadIdx.x) ], shareBuffer_Out[row][threadIdx.x][kGlobal]);
                }
            }
        }

        __syncthreads();
    }

} // END



void conv_kernel_wrapper(const float *Input,
    const float *Kernel, float *Output, int itr) {
    cudaEvent_t start;
    CHECK(cudaEventCreate(&start));
    cudaEvent_t stop;
    CHECK(cudaEventCreate(&stop));
    float msec = 0.0f;
    float *dev_Input;
    float *dev_Kernel;
    float *dev_Output;

    CHECK(cudaMalloc(&dev_Kernel, sizeof(float) * N_F * N_C * N_R * N_S));
    CHECK(cudaMemcpy(dev_Kernel, Kernel, sizeof(float) * N_F * N_C * N_R * N_S, cudaMemcpyHostToDevice));

    CHECK(cudaMalloc(&dev_Input, sizeof(float) * N_B * N_C * N_H * N_W));
    CHECK(cudaMemcpy(dev_Input, Input, sizeof(float) * N_B * N_C * N_H * N_W, cudaMemcpyHostToDevice));

    CHECK(cudaMalloc(&dev_Output, sizeof(float) * N_B * N_F * N_Y * N_X));
    CHECK(cudaMemset(dev_Output, 0, sizeof(float) * N_B * N_F * N_Y * N_X));
   /*call conv_kernel() */
    dim3 size_block(32, B_w, B_h); 
    dim3 size_grid((N_F / (T_k*size_block.x)) * CBlockMult, W / (T_w * B_w), H / (T_h * B_h) );
    printf("warmup....\n");
    printf("block shape <%d, %d, %d>\n", 32, B_w, B_h);
    printf("grid shape <%d, %d, %d>\n", (N_F / (T_k*size_block.x)) * CBlockMult, W / (T_w * B_w), H / (T_h * B_h)  );
    printf("%d %d %d %d %d | %d %d %d %d %d %d %d  \n", K, H, W, C, R, T_k, T_h, T_w, 32, B_h, B_w, CBlockMult);
    conv_kernel <<< size_grid, size_block >>>(dev_Input, dev_Kernel, dev_Output);
    
    CHECK(cudaMemcpy(Output, dev_Output, sizeof(float) * N_B * N_F * N_X * N_Y, cudaMemcpyDeviceToHost));
    CHECK(cudaFree(dev_Input));
    CHECK(cudaFree(dev_Kernel));
    CHECK(cudaFree(dev_Output));


    double *time_arr = (double *)malloc(itr * sizeof(double));
    for (int j = 1; j < itr; j++) {
        CHECK(cudaMalloc(&dev_Kernel, sizeof(float) * N_F * N_C * N_R * N_S));
        CHECK(cudaMemcpy(dev_Kernel, Kernel+j*N_F * N_C * N_R * N_S, sizeof(float) * N_F * N_C * N_R * N_S, cudaMemcpyHostToDevice));
        CHECK(cudaMalloc(&dev_Input, sizeof(float) * N_B * N_C * N_H * N_W));
        CHECK(cudaMemcpy(dev_Input, Input+j*N_B * N_C * N_H * N_W, sizeof(float) * N_B * N_C * N_H * N_W, cudaMemcpyHostToDevice));
        CHECK(cudaMalloc(&dev_Output, sizeof(float) * N_B * N_F * N_Y * N_X));
        CHECK(cudaMemset(dev_Output, 0, sizeof(float) * N_B * N_F * N_Y * N_X));
        /* Record the start event*/
        CHECK(cudaEventRecord(start, NULL));
        conv_kernel <<< size_grid, size_block >>>(dev_Input, dev_Kernel, dev_Output);
        /* Record the end event */
        CHECK(cudaEventRecord(stop, NULL));
        /* Wait for the stop event to complete*/
        CHECK(cudaEventSynchronize(stop));
        float msec = 0.0f;
        cudaEventElapsedTime(&msec, start, stop);
        time_arr[j] = msec;
        CHECK(cudaFree(dev_Input));
        CHECK(cudaFree(dev_Kernel));
        CHECK(cudaFree(dev_Output));
    }

    for (int j = 1; j < itr; j++) {   
        printf("time %0.5lf \n", time_arr[j]);
    }

    return;
}
