#include <stdio.h>
#include <stdlib.h>
#include "common.h"

__global__ void
conv_kernel(const TYPE *__restrict__ Input /*(N*C*H*W)*/,
            const TYPE *__restrict__ Kernel /*(C*R*S*F)*/,
            TYPE *__restrict__ Output /*(N*F*Y*X)*/) {

    int k, h, w, c, i, j, r, s, row, kReg, kGlobal;
    // Total sizes of input for register operations
    int inTotalH = H+R-1;
    int inTotalW = W+S-1;

    // Compinsate for c block increase
    int blockIdxXAdjusted = blockIdx.x % BlockXCoverageNumber;

    // Find the upper corner in 3d space
    int kIndex = blockIdxXAdjusted * blockDim.x * T_k + threadIdx.x;
    int kWarpReach = W_k * T_k;

    //C offset calculation
    int cStart = (blockIdx.x / BlockXCoverageNumber) * CDivisionSize;
    int cBound = cStart + CDivisionSize;

    // Registers
    TYPE regOut[T_k][T_h][T_w];
    TYPE regIn[inAdjustedTileW];
    TYPE regK[2];

    // Shared memory
    //int adjustedRowIndexMemTile = threadIdx.z * blockDim.y + threadIdx.y;
    int hIndexBlock = blockIdx.z * blockDim.z * T_h;
    int wIndexBlock = blockIdx.y * blockDim.y * T_w;

    __shared__ TYPE shareBuffer_In[2][memTileH][memTileW];
    __shared__ TYPE shareBuffer_Out[W_k*B_k][OutBlockH*OutBlockW];
    __shared__ TYPE shareBuffer_Ker[2][R*S][T_k*W_k*B_k];


    // Zero out the registers
    for(k = 0; k < T_k; k++) {
        for (h = 0; h < T_h; h++) {
            for (w = 0; w < T_w; w++) {
                regOut[k][h][w] = 0.0f;
            }
        }
    }

    int linear_id_in_TB = threadIdx.z * blockDim.x * blockDim.y+ threadIdx.y * blockDim.x + threadIdx.x;
    int num_of_warp = (blockDim.x * blockDim.y * blockDim.z) >> 5;
    int lane_id = linear_id_in_TB & 31;
    int warp_id = linear_id_in_TB >> 5;
    int jumpDist = num_of_warp;


    float *__restrict__ ingmem_ptr = &((float *) Input)[hIndexBlock * inTotalW];
    float *__restrict__ insbuf_ptr = &((float *) shareBuffer_In)[0];
    for (int i = 0; i < (memTileH*memTileW)>>1; i += (B_h*B_w*B_k*32)){
        if (i + linear_id_in_TB < (memTileH*memTileW)>>1){
            *((float2 *)insbuf_ptr+i+linear_id_in_TB) =  *((float2 *)ingmem_ptr+i+linear_id_in_TB);
        }
    }

    for (row = warp_id; row < R*S; row += jumpDist) {
        for (int rp = 0; rp < CEIL(OutBlockK, 32); rp++) {
            if (lane_id + rp*32 < OutBlockK){
                shareBuffer_Ker[0][row][lane_id+ rp*32] = Kernel[(row)*K + blockIdxXAdjusted * blockDim.x * T_k + lane_id + rp*32];
            }    
        }
    }

    int flip = 1;

    // Collapse all c into output
    for (c = cStart; c < cBound; c++) { // Assuming T_c is 1
       __syncthreads();
        if ( c+1 < cBound){
            float *__restrict__ ingmem_ptr = &((float *) Input)[(c+1)*inTotalH*inTotalW + hIndexBlock * inTotalW];
            float *__restrict__ insbuf_ptr = &((float *) shareBuffer_In)[flip*memTileW*memTileH];
            for (int i = 0; i < memTileH*memTileW/2; i += (B_h*B_w*B_k*32)){
                if (i + linear_id_in_TB < memTileH*memTileW/2){
                    *((float2 *)insbuf_ptr+i+linear_id_in_TB) =  *((float2 *)ingmem_ptr+i+linear_id_in_TB);
                }
            }

            // dbf kernSM
            for (row = warp_id; row < R*S; row += jumpDist) {
                for (int rp = 0; rp < CEIL(OutBlockK, 32); rp++) {
                    if (lane_id + rp*32 < OutBlockK){
                        shareBuffer_Ker[flip][row][lane_id + rp*32] = Kernel[ (c+1)*R*S*K + (row)*K + blockIdxXAdjusted * blockDim.x * T_k + lane_id + rp*32];
                    }
                }
            }
        }
        flip = flip ^ 1;

#pragma unroll(3) // ReplaceLine 000001
        for (r = 0; r < R; r++) {
            for(j = 0; j < inAdjustedTileW; j++) {
                regIn[j] = shareBuffer_In[flip][threadIdx.z*T_h + r][threadIdx.y*T_w + j];
            }
#pragma unroll(3) // ReplaceLine 000002
            for (s = 0; s < S; s++) {
                //Kern SM 2
                for (kReg = 0;kReg < T_k; kReg += 2) {      // loop over T_k
                    float *__restrict__ ksbuf_ptr = &((float *) shareBuffer_Ker)[flip*R*S*OutBlockK+(r*S + s)*OutBlockK];
                    *((float2 *)regK) = *((float2 *)ksbuf_ptr + threadIdx.x*(T_k/2) + kReg/2);
#pragma unroll(17) // ReplaceLine 000003
                    for (w = s; w < T_w + s; w++) {
                        regOut[kReg][0][w-s] += regIn[w] * regK[0];
                        regOut[kReg+1][0][w-s] += regIn[w] * regK[1];
                    } // Tw 17
                } //TK 4
            } //S  3
        } //R  3
    } // End c

     int kIndexBlock = blockIdxXAdjusted * blockDim.x * T_k;

    //new
    for(k = 0; k < T_k; k++) {
        for (w = 0; w < T_w; w++) {
            shareBuffer_Out[threadIdx.x][threadIdx.z*OutBlockW + threadIdx.y*T_w+w] = regOut[k][0][w];
        }
        __syncthreads();
        for(int kk = 0; kk < W_k*B_k; kk++) {
            for (int i = 0; i < OutBlockW*OutBlockH; i += (B_h*B_w*B_k*32)){
                if (i + linear_id_in_TB < OutBlockW*OutBlockH && (kIndexBlock + kk*T_k+ k) < K){
                    Output[(kIndexBlock + kk*T_k+ k) *H*W + hIndexBlock*W + (wIndexBlock + i + linear_id_in_TB)] = shareBuffer_Out[kk][i + linear_id_in_TB];
                }

            }
        }
        __syncthreads();
    } //end write out
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
    dim3 size_block(B_k*W_k, B_w*W_w, B_h*W_h);
    dim3 size_grid((N_F / (T_k*size_block.x)) * CBlockMult, CEIL(W , (T_w * size_block.y)), CEIL(H, (T_h * size_block.z)) );
    printf("warmup....\n");
    printf("block shape <%d, %d, %d>\n", B_k*W_k, B_w*W_w, B_h*W_h);
    printf("grid shape <%d, %d, %d>\n",  (N_F / (T_k*size_block.x)) * CBlockMult, CEIL(W , (T_w * size_block.y)), CEIL(H, (T_h * size_block.z)) );
    printf("%d %d %d %d %d | %d %d %d %d %d %d %d %d %d \n", K, H, W, C, R, T_h, T_w, T_k, W_h, W_w, W_k, B_h, B_w, B_k);
    conv_kernel <<< size_grid, size_block >>>(dev_Input, dev_Kernel, dev_Output);
    CHECK(cudaFree(dev_Input));
    CHECK(cudaFree(dev_Kernel));
    CHECK(cudaFree(dev_Output));
    printf("Input size: %d X %d X %d X %d\n", N_B, N_C, N_H, N_W);
    printf("Kernel size: %d X %d X %d X %d\n", N_F, N_C, N_R, N_S);
    printf("Output size: %d X %d X %d X %d\n", N_B, N_F, N_Y, N_X);

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
        printf("%0.5lf \n", time_arr[j]);
    }

    return;
}
