
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[4];
  __shared__ float pad_temp_shared[112];
  __shared__ float kernel_shared[1024];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[(((int)threadIdx.x))] = data[((((((rc_outer_outer * 50176) + ((((int)threadIdx.x) / 7) * 3136)) + (((((int)blockIdx.x) % 196) / 7) * 112)) + ((((int)blockIdx.x) % 7) * 8)) + (((int)threadIdx.x) % 7)))];
    if (((int)threadIdx.x) < 48) {
      pad_temp_shared[((((int)threadIdx.x) + 64))] = data[((((((rc_outer_outer * 50176) + (((((int)threadIdx.x) + 64) / 7) * 3136)) + (((((int)blockIdx.x) % 196) / 7) * 112)) + ((((int)blockIdx.x) % 7) * 8)) + ((((int)threadIdx.x) + 1) % 7)))];
    }
      ((float4*)(kernel_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 196) * 4096) + ((((int)threadIdx.x) >> 2) * 64)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 3) * 4)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 256))))[0] = ((float4*)(kernel + (((((((((int)blockIdx.x) / 196) * 4096) + ((((int)threadIdx.x) >> 2) * 64)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 1024))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 512))))[0] = ((float4*)(kernel + (((((((((int)blockIdx.x) / 196) * 4096) + ((((int)threadIdx.x) >> 2) * 64)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 2048))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 768))))[0] = ((float4*)(kernel + (((((((((int)blockIdx.x) / 196) * 4096) + ((((int)threadIdx.x) >> 2) * 64)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 3) * 4)) + 3072))))[0];
    __syncthreads();
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) & 3) * 2))] * kernel_shared[(((((int)threadIdx.x) >> 2) * 16))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) & 3) * 2))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 256))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) & 3) * 2))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 512))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) & 3) * 2))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 768))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 7))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 1))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 7))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 257))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 7))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 513))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 7))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 769))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 14))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 2))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 14))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 258))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 14))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 514))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 14))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 770))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 21))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 3))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 21))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 259))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 21))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 515))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 21))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 771))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 28))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 4))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 28))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 260))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 28))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 516))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 28))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 772))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 35))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 5))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 35))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 261))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 35))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 517))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 35))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 773))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 42))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 6))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 42))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 262))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 42))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 518))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 42))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 774))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 49))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 7))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 49))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 263))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 49))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 519))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 49))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 775))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 56))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 8))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 56))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 264))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 56))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 520))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 56))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 776))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 63))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 9))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 63))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 265))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 63))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 521))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 63))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 777))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 70))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 10))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 70))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 266))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 70))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 522))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 70))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 778))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 77))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 11))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 77))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 267))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 77))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 523))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 77))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 779))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 84))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 12))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 84))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 268))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 84))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 524))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 84))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 780))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 13))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 269))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 525))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 781))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 98))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 14))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 98))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 270))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 98))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 526))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 98))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 782))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 105))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 15))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 105))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 271))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 105))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 527))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) & 3) * 2) + 105))] * kernel_shared[((((((int)threadIdx.x) >> 2) * 16) + 783))]));
  }
  compute[((((((((int)blockIdx.x) / 196) * 50176) + ((((int)threadIdx.x) >> 2) * 784)) + ((((int)blockIdx.x) % 196) * 4)) + (((int)threadIdx.x) & 3)))] = compute_local[(0)];
  compute[(((((((((int)blockIdx.x) / 196) * 50176) + ((((int)threadIdx.x) >> 2) * 784)) + ((((int)blockIdx.x) % 196) * 4)) + (((int)threadIdx.x) & 3)) + 12544))] = compute_local[(1)];
  compute[(((((((((int)blockIdx.x) / 196) * 50176) + ((((int)threadIdx.x) >> 2) * 784)) + ((((int)blockIdx.x) % 196) * 4)) + (((int)threadIdx.x) & 3)) + 25088))] = compute_local[(2)];
  compute[(((((((((int)blockIdx.x) / 196) * 50176) + ((((int)threadIdx.x) >> 2) * 784)) + ((((int)blockIdx.x) % 196) * 4)) + (((int)threadIdx.x) & 3)) + 37632))] = compute_local[(3)];
}



void conv_kernel_wrapper(int N_B, int N_C, int N_H, int N_W, int N_F, int N_R, int N_S, int PaddingH, int PaddingW,
                        int StrideH, int StrideW, int N_X, int N_Y, const float *Input, 
                        const float *Kernel, float *Output, int itr) {
                        cudaEvent_t start;
                        CHECK(cudaEventCreate(&start));
                        cudaEvent_t stop;
                        CHECK(cudaEventCreate(&stop));
                        float *dev_Input;
                        float *dev_Kernel;
                        float *dev_Output;
                    
                        CHECK(cudaMalloc(&dev_Kernel, sizeof(float) * N_F * N_C * N_R * N_S));
                        CHECK(cudaMemcpy(dev_Kernel, Kernel, sizeof(float) * N_F * N_C * N_R * N_S, cudaMemcpyHostToDevice));
                    
                        CHECK(cudaMalloc(&dev_Input, sizeof(float) * N_B * N_C * N_H * N_W));
                        CHECK(cudaMemcpy(dev_Input, Input, sizeof(float) * N_B * N_C * N_H * N_W, cudaMemcpyHostToDevice));
                    
                        CHECK(cudaMalloc(&dev_Output, sizeof(float) * N_B * N_F * N_Y * N_X));
                        CHECK(cudaMemset(dev_Output, 0, sizeof(float) * N_B * N_F * N_Y * N_X));
                    
dim3 size_grid(392,1,1);

dim3 size_block(64,1,1);
 
                       printf("warmup....\n");
                        default_function_kernel0 <<< size_grid, size_block >>>(dev_Input, dev_Kernel, dev_Output);
                    
                        double *time_arr = (double *)malloc(itr * sizeof(double));
                        for (int j = 1; j < itr; j++) {
                            CHECK(cudaMalloc(&dev_Kernel, sizeof(float) * N_F * N_C * N_R * N_S));
                            CHECK(cudaMemcpy(dev_Kernel, Kernel+j*N_F * N_C * N_R * N_S, sizeof(float) * N_F * N_C * N_R * N_S, cudaMemcpyHostToDevice));
                    
                            CHECK(cudaMalloc(&dev_Input, sizeof(float) * N_B * N_C * N_H * N_W));
                            CHECK(cudaMemcpy(dev_Input, Input+j*N_B * N_C * N_H * N_W, sizeof(float) * N_B * N_C * N_H * N_W, cudaMemcpyHostToDevice));
                    
                            /* Record the start event*/
                            CHECK(cudaEventRecord(start, NULL));
                            default_function_kernel0 <<< size_grid, size_block >>>(dev_Input, dev_Kernel, dev_Output);
                            /* Record the end event */
                            CHECK(cudaEventRecord(stop, NULL));
                            /* Wait for the stop event to complete*/
                            CHECK(cudaEventSynchronize(stop));
                            float msec = 0.0f;
                            cudaEventElapsedTime(&msec, start, stop);
                            time_arr[j] = msec;
                        }
                    
                       
                    
                        //cudaError_t err = cudaGetLastError();
                        //if (err != cudaSuccess) printf("Error: %s\n", cudaGetErrorString(err));
                        double msecTotal = 0;
                        for (int j = 1; j < itr; j++) {   
                            printf("%0.5lf\n", time_arr[j]);
                            msecTotal += time_arr[j];
                        }
                    
                        double msecPerMatrixMul = (msecTotal) / itr;
                        double flopsPerMatrixMul = 2.0 * N_B * N_C * N_X * N_Y * N_F * N_R * N_S;
                    
                        double gigaFlops = (flopsPerMatrixMul * 1.0e-9f) / (msecPerMatrixMul / 1000.0f);
                    
                        printf("\n===========================================================\n");
                        printf("Input size: %d X %d X %d X %d\n", N_B, N_C, N_H, N_W);
                        printf("Kernel size: %d X %d X %d X %d\n", N_F, N_C, N_R, N_S);
                        printf("Output size: %d X %d X %d X %d\n", N_B, N_F, N_Y, N_X);
                        printf("flops: %0.5lf\n", (flopsPerMatrixMul * 1.0e-9f));
                        printf("Time is %0.5lf \n", (msecPerMatrixMul / 1000.0f));
                        printf("Gflops %0.5lf \n", gigaFlops);
                        printf("===========================================================\n");
                    
                        /*write back to Host Output -- batch size is 1*/
                        CHECK(cudaMemcpy(Output, dev_Output, sizeof(float) * N_B * N_F * N_X * N_Y, cudaMemcpyDeviceToHost));
                    
                        CHECK(cudaFree(dev_Input));
                        CHECK(cudaFree(dev_Kernel));
                        CHECK(cudaFree(dev_Output));
                    
                    }
            