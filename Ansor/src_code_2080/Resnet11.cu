
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[4];
  __shared__ float pad_temp_shared[208];
  __shared__ float kernel_shared[512];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[((((int)threadIdx.x) * 2))] = data[(((((rc_outer_outer * 3136) + (((((int)threadIdx.x) * 2) / 13) * 196)) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) * 2) % 13)))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 1))] = data[(((((rc_outer_outer * 3136) + ((((((int)threadIdx.x) * 2) + 1) / 13) * 196)) + ((((int)blockIdx.x) % 7) * 28)) + (((((int)threadIdx.x) * 2) + 1) % 13)))];
    if (((int)threadIdx.x) < 48) {
      pad_temp_shared[(((((int)threadIdx.x) * 2) + 112))] = data[(((((rc_outer_outer * 3136) + ((((((int)threadIdx.x) * 2) + 112) / 13) * 196)) + ((((int)blockIdx.x) % 7) * 28)) + (((((int)threadIdx.x) * 2) + 8) % 13)))];
    }
    if (((int)threadIdx.x) < 48) {
      pad_temp_shared[(((((int)threadIdx.x) * 2) + 113))] = data[(((((rc_outer_outer * 3136) + ((((((int)threadIdx.x) * 2) + 113) / 13) * 196)) + ((((int)blockIdx.x) % 7) * 28)) + (((((int)threadIdx.x) * 2) + 9) % 13)))];
    }
    kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    kernel_shared[((((int)threadIdx.x) + 56))] = kernel[((((((((int)blockIdx.x) / 7) * 8192) + (((((int)threadIdx.x) + 56) >> 4) * 256)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 8) & 15)))];
    kernel_shared[((((int)threadIdx.x) + 112))] = kernel[(((((((((int)blockIdx.x) / 7) * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 1792))];
    kernel_shared[((((int)threadIdx.x) + 168))] = kernel[((((((((int)blockIdx.x) / 7) * 8192) + (((((int)threadIdx.x) + 168) >> 4) * 256)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 8) & 15)))];
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[(((((((((int)blockIdx.x) / 7) * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 3584))];
    kernel_shared[((((int)threadIdx.x) + 280))] = kernel[((((((((int)blockIdx.x) / 7) * 8192) + (((((int)threadIdx.x) + 280) >> 4) * 256)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 8) & 15)))];
    kernel_shared[((((int)threadIdx.x) + 336))] = kernel[(((((((((int)blockIdx.x) / 7) * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 5376))];
    kernel_shared[((((int)threadIdx.x) + 392))] = kernel[((((((((int)blockIdx.x) / 7) * 8192) + (((((int)threadIdx.x) + 392) >> 4) * 256)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 8) & 15)))];
    kernel_shared[((((int)threadIdx.x) + 448))] = kernel[(((((((((int)blockIdx.x) / 7) * 8192) + ((((int)threadIdx.x) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 7168))];
    if (((int)threadIdx.x) < 8) {
      kernel_shared[((((int)threadIdx.x) + 504))] = kernel[((((((((int)blockIdx.x) / 7) * 8192) + (((((int)threadIdx.x) + 504) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 8)))];
    }
    __syncthreads();
    for (int rc_inner = 0; rc_inner < 16; ++rc_inner) {
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_inner * 13) + ((((int)threadIdx.x) % 7) * 2)))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + rc_inner))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((rc_inner * 13) + ((((int)threadIdx.x) % 7) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 7) * 16) + rc_inner) + 128))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((rc_inner * 13) + ((((int)threadIdx.x) % 7) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 7) * 16) + rc_inner) + 256))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((rc_inner * 13) + ((((int)threadIdx.x) % 7) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 7) * 16) + rc_inner) + 384))]));
    }
  }
  compute[((((((((int)blockIdx.x) / 7) * 1568) + ((((int)threadIdx.x) / 7) * 49)) + ((((int)blockIdx.x) % 7) * 7)) + (((int)threadIdx.x) % 7)))] = compute_local[(0)];
  compute[(((((((((int)blockIdx.x) / 7) * 1568) + ((((int)threadIdx.x) / 7) * 49)) + ((((int)blockIdx.x) % 7) * 7)) + (((int)threadIdx.x) % 7)) + 392))] = compute_local[(1)];
  compute[(((((((((int)blockIdx.x) / 7) * 1568) + ((((int)threadIdx.x) / 7) * 49)) + ((((int)blockIdx.x) % 7) * 7)) + (((int)threadIdx.x) % 7)) + 784))] = compute_local[(2)];
  compute[(((((((((int)blockIdx.x) / 7) * 1568) + ((((int)threadIdx.x) / 7) * 49)) + ((((int)blockIdx.x) % 7) * 7)) + (((int)threadIdx.x) % 7)) + 1176))] = compute_local[(3)];
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
                    
dim3 size_grid(112,1,1);

dim3 size_block(56,1,1);
 
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
            