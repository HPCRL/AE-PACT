
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[16];
  __shared__ float pad_temp_shared[544];
  __shared__ float kernel_shared[384];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(8)] = 0.000000e+00f;
  compute_local[(10)] = 0.000000e+00f;
  compute_local[(12)] = 0.000000e+00f;
  compute_local[(14)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  compute_local[(9)] = 0.000000e+00f;
  compute_local[(11)] = 0.000000e+00f;
  compute_local[(13)] = 0.000000e+00f;
  compute_local[(15)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    for (int rx_outer_outer = 0; rx_outer_outer < 3; ++rx_outer_outer) {
      __syncthreads();
      pad_temp_shared[(((int)threadIdx.x))] = data[((((((rc_outer_outer * 5184) + ((((int)blockIdx.x) % 17) * 72)) + ((((int)threadIdx.x) / 34) * 36)) + rx_outer_outer) + (((int)threadIdx.x) % 34)))];
      pad_temp_shared[((((int)threadIdx.x) + 136))] = data[(((((((rc_outer_outer * 5184) + ((((int)blockIdx.x) % 17) * 72)) + ((((int)threadIdx.x) / 34) * 36)) + rx_outer_outer) + (((int)threadIdx.x) % 34)) + 1296))];
      pad_temp_shared[((((int)threadIdx.x) + 272))] = data[(((((((rc_outer_outer * 5184) + ((((int)blockIdx.x) % 17) * 72)) + ((((int)threadIdx.x) / 34) * 36)) + rx_outer_outer) + (((int)threadIdx.x) % 34)) + 2592))];
      pad_temp_shared[((((int)threadIdx.x) + 408))] = data[(((((((rc_outer_outer * 5184) + ((((int)blockIdx.x) % 17) * 72)) + ((((int)threadIdx.x) / 34) * 36)) + rx_outer_outer) + (((int)threadIdx.x) % 34)) + 3888))];
      kernel_shared[(((int)threadIdx.x))] = kernel[(((((((((int)blockIdx.x) / 17) * 73728) + ((((int)threadIdx.x) / 12) * 2304)) + (rc_outer_outer * 36)) + ((((int)threadIdx.x) % 12) * 3)) + rx_outer_outer))];
      kernel_shared[((((int)threadIdx.x) + 136))] = kernel[(((((((((int)blockIdx.x) / 17) * 73728) + (((((int)threadIdx.x) + 136) / 12) * 2304)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) + 4) % 12) * 3)) + rx_outer_outer))];
      if (((int)threadIdx.x) < 112) {
        kernel_shared[((((int)threadIdx.x) + 272))] = kernel[(((((((((int)blockIdx.x) / 17) * 73728) + (((((int)threadIdx.x) + 272) / 12) * 2304)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) + 8) % 12) * 3)) + rx_outer_outer))];
      }
      __syncthreads();
      for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)))] * kernel_shared[((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)))]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 34))] * kernel_shared[((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)))]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 12))]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 12))]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 24))]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 24))]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 36))]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 36))]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 1))]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 1))]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 13))]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 13))]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 25))]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 25))]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 37))]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 37))]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 2))]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 2))]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 14))]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 14))]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 26))]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 26))]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 38))]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 38))]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 1))] * kernel_shared[((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)))]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 35))] * kernel_shared[((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)))]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 12))]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 35))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 12))]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 24))]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 35))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 24))]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 36))]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 35))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 36))]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 35))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 1))]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 69))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 1))]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 35))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 13))]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 69))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 13))]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 35))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 25))]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 69))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 25))]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 35))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 37))]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 69))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 37))]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 69))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 2))]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 103))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 2))]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 69))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 14))]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 103))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 14))]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 69))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 26))]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 103))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 26))]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 69))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 38))]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 136) + ((((int)threadIdx.x) % 17) * 2)) + 103))] * kernel_shared[(((((((int)threadIdx.x) / 17) * 48) + (rc_outer_inner * 3)) + 38))]));
      }
    }
  }
  for (int ff_inner = 0; ff_inner < 4; ++ff_inner) {
    for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
      for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
        compute[(((((((((((int)blockIdx.x) / 17) * 36992) + ((((int)threadIdx.x) / 17) * 4624)) + (ff_inner * 1156)) + ((((int)blockIdx.x) % 17) * 68)) + (yy_inner * 34)) + ((((int)threadIdx.x) % 17) * 2)) + xx_inner))] = compute_local[((((ff_inner * 4) + (yy_inner * 2)) + xx_inner))];
      }
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
                    
dim3 size_grid(272,1,1);

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
            