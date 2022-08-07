
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[64];
  __shared__ float pad_temp_shared[1088];
  __shared__ float kernel_shared[512];
  for (int ff_c_outer_inner_init = 0; ff_c_outer_inner_init < 4; ++ff_c_outer_inner_init) {
    compute_local[((ff_c_outer_inner_init * 2))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 8))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 16))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 24))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 32))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 40))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 48))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 56))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 1))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 9))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 17))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 25))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 33))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 41))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 49))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 2) + 57))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
      ((float2*)(pad_temp_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(data + (((((((rc_outer_outer * 147968) + ((((int)threadIdx.x) / 68) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 68) / 17) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + ((((int)threadIdx.x) % 17) * 2)))))[0];
      ((float2*)(pad_temp_shared + (((((int)threadIdx.x) * 2) + 272))))[0] = ((float2*)(data + ((((((((rc_outer_outer * 147968) + ((((int)threadIdx.x) / 68) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 68) / 17) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + ((((int)threadIdx.x) % 17) * 2)) + 36992))))[0];
      ((float2*)(pad_temp_shared + (((((int)threadIdx.x) * 2) + 544))))[0] = ((float2*)(data + ((((((((rc_outer_outer * 147968) + ((((int)threadIdx.x) / 68) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 68) / 17) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + ((((int)threadIdx.x) % 17) * 2)) + 73984))))[0];
      ((float2*)(pad_temp_shared + (((((int)threadIdx.x) * 2) + 816))))[0] = ((float2*)(data + ((((((((rc_outer_outer * 147968) + ((((int)threadIdx.x) / 68) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 68) / 17) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + ((((int)threadIdx.x) % 17) * 2)) + 110976))))[0];
    kernel_shared[(((int)threadIdx.x))] = kernel[(((((((int)threadIdx.x) >> 3) * 128) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    kernel_shared[((((int)threadIdx.x) + 136))] = kernel[((((((((int)threadIdx.x) >> 3) * 128) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 2176))];
    kernel_shared[((((int)threadIdx.x) + 272))] = kernel[((((((((int)threadIdx.x) >> 3) * 128) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 4352))];
    if (((int)threadIdx.x) < 104) {
      kernel_shared[((((int)threadIdx.x) + 408))] = kernel[((((((((int)threadIdx.x) >> 3) * 128) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 6528))];
    }
    __syncthreads();
    for (int ff_c_outer_inner = 0; ff_c_outer_inner < 4; ++ff_c_outer_inner) {
      for (int rc_inner = 0; rc_inner < 8; ++rc_inner) {
        compute_local[((ff_c_outer_inner * 2))] = (compute_local[((ff_c_outer_inner * 2))] + (pad_temp_shared[(((rc_inner * 136) + (((int)threadIdx.x) % 34)))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner))]));
        compute_local[(((ff_c_outer_inner * 2) + 8))] = (compute_local[(((ff_c_outer_inner * 2) + 8))] + (pad_temp_shared[((((rc_inner * 136) + (((int)threadIdx.x) % 34)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner))]));
        compute_local[(((ff_c_outer_inner * 2) + 16))] = (compute_local[(((ff_c_outer_inner * 2) + 16))] + (pad_temp_shared[(((rc_inner * 136) + (((int)threadIdx.x) % 34)))] * kernel_shared[((((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner) + 128))]));
        compute_local[(((ff_c_outer_inner * 2) + 24))] = (compute_local[(((ff_c_outer_inner * 2) + 24))] + (pad_temp_shared[((((rc_inner * 136) + (((int)threadIdx.x) % 34)) + 68))] * kernel_shared[((((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner) + 128))]));
        compute_local[(((ff_c_outer_inner * 2) + 32))] = (compute_local[(((ff_c_outer_inner * 2) + 32))] + (pad_temp_shared[(((rc_inner * 136) + (((int)threadIdx.x) % 34)))] * kernel_shared[((((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner) + 256))]));
        compute_local[(((ff_c_outer_inner * 2) + 40))] = (compute_local[(((ff_c_outer_inner * 2) + 40))] + (pad_temp_shared[((((rc_inner * 136) + (((int)threadIdx.x) % 34)) + 68))] * kernel_shared[((((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner) + 256))]));
        compute_local[(((ff_c_outer_inner * 2) + 48))] = (compute_local[(((ff_c_outer_inner * 2) + 48))] + (pad_temp_shared[(((rc_inner * 136) + (((int)threadIdx.x) % 34)))] * kernel_shared[((((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner) + 384))]));
        compute_local[(((ff_c_outer_inner * 2) + 56))] = (compute_local[(((ff_c_outer_inner * 2) + 56))] + (pad_temp_shared[((((rc_inner * 136) + (((int)threadIdx.x) % 34)) + 68))] * kernel_shared[((((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner) + 384))]));
        compute_local[(((ff_c_outer_inner * 2) + 1))] = (compute_local[(((ff_c_outer_inner * 2) + 1))] + (pad_temp_shared[((((rc_inner * 136) + (((int)threadIdx.x) % 34)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner))]));
        compute_local[(((ff_c_outer_inner * 2) + 9))] = (compute_local[(((ff_c_outer_inner * 2) + 9))] + (pad_temp_shared[((((rc_inner * 136) + (((int)threadIdx.x) % 34)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner))]));
        compute_local[(((ff_c_outer_inner * 2) + 17))] = (compute_local[(((ff_c_outer_inner * 2) + 17))] + (pad_temp_shared[((((rc_inner * 136) + (((int)threadIdx.x) % 34)) + 34))] * kernel_shared[((((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner) + 128))]));
        compute_local[(((ff_c_outer_inner * 2) + 25))] = (compute_local[(((ff_c_outer_inner * 2) + 25))] + (pad_temp_shared[((((rc_inner * 136) + (((int)threadIdx.x) % 34)) + 102))] * kernel_shared[((((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner) + 128))]));
        compute_local[(((ff_c_outer_inner * 2) + 33))] = (compute_local[(((ff_c_outer_inner * 2) + 33))] + (pad_temp_shared[((((rc_inner * 136) + (((int)threadIdx.x) % 34)) + 34))] * kernel_shared[((((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner) + 256))]));
        compute_local[(((ff_c_outer_inner * 2) + 41))] = (compute_local[(((ff_c_outer_inner * 2) + 41))] + (pad_temp_shared[((((rc_inner * 136) + (((int)threadIdx.x) % 34)) + 102))] * kernel_shared[((((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner) + 256))]));
        compute_local[(((ff_c_outer_inner * 2) + 49))] = (compute_local[(((ff_c_outer_inner * 2) + 49))] + (pad_temp_shared[((((rc_inner * 136) + (((int)threadIdx.x) % 34)) + 34))] * kernel_shared[((((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner) + 384))]));
        compute_local[(((ff_c_outer_inner * 2) + 57))] = (compute_local[(((ff_c_outer_inner * 2) + 57))] + (pad_temp_shared[((((rc_inner * 136) + (((int)threadIdx.x) % 34)) + 102))] * kernel_shared[((((((((int)threadIdx.x) / 34) * 32) + (ff_c_outer_inner * 8)) + rc_inner) + 384))]));
      }
    }
  }
  for (int ff_inner = 0; ff_inner < 4; ++ff_inner) {
    for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
      compute[((((((((((int)threadIdx.x) / 34) * 73984) + (ff_inner * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (yy_inner * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)))] = compute_local[(((ff_inner * 2) + yy_inner))];
      compute[(((((((((((int)threadIdx.x) / 34) * 73984) + (ff_inner * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (yy_inner * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 272))] = compute_local[((((ff_inner * 2) + yy_inner) + 8))];
      compute[(((((((((((int)threadIdx.x) / 34) * 73984) + (ff_inner * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (yy_inner * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 295936))] = compute_local[((((ff_inner * 2) + yy_inner) + 16))];
      compute[(((((((((((int)threadIdx.x) / 34) * 73984) + (ff_inner * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (yy_inner * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 296208))] = compute_local[((((ff_inner * 2) + yy_inner) + 24))];
      compute[(((((((((((int)threadIdx.x) / 34) * 73984) + (ff_inner * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (yy_inner * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 591872))] = compute_local[((((ff_inner * 2) + yy_inner) + 32))];
      compute[(((((((((((int)threadIdx.x) / 34) * 73984) + (ff_inner * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (yy_inner * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 592144))] = compute_local[((((ff_inner * 2) + yy_inner) + 40))];
      compute[(((((((((((int)threadIdx.x) / 34) * 73984) + (ff_inner * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (yy_inner * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 887808))] = compute_local[((((ff_inner * 2) + yy_inner) + 48))];
      compute[(((((((((((int)threadIdx.x) / 34) * 73984) + (ff_inner * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (yy_inner * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 888080))] = compute_local[((((ff_inner * 2) + yy_inner) + 56))];
    }
  }
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
                    
dim3 size_grid(136,1,1);

dim3 size_block(136,1,1);
 
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
            