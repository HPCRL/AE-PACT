
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[68];
  __shared__ float pad_temp_shared[288];
  __shared__ float kernel_shared[576];
  for (int ff_c_outer_inner_init = 0; ff_c_outer_inner_init < 2; ++ff_c_outer_inner_init) {
    compute_local[((ff_c_outer_inner_init * 34))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 1))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 2))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 3))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 4))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 5))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 6))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 7))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 8))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 9))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 10))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 11))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 12))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 13))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 14))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 15))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 16))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 17))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 18))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 19))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 20))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 21))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 22))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 23))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 24))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 25))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 26))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 27))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 28))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 29))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 30))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 31))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 32))] = 0.000000e+00f;
    compute_local[(((ff_c_outer_inner_init * 34) + 33))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[((((int)threadIdx.x) * 2))] = data[((((rc_outer_outer * 2592) + ((((int)blockIdx.x) % 17) * 72)) + (((int)threadIdx.x) * 2)))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 1))] = data[(((((rc_outer_outer * 2592) + ((((int)blockIdx.x) % 17) * 72)) + (((int)threadIdx.x) * 2)) + 1))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 64))] = data[(((((rc_outer_outer * 2592) + ((((int)blockIdx.x) % 17) * 72)) + (((int)threadIdx.x) * 2)) + 64))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 65))] = data[(((((rc_outer_outer * 2592) + ((((int)blockIdx.x) % 17) * 72)) + (((int)threadIdx.x) * 2)) + 65))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 128))] = data[(((((rc_outer_outer * 2592) + ((((((int)threadIdx.x) * 2) + 128) / 144) * 1296)) + ((((int)blockIdx.x) % 17) * 72)) + (((((int)threadIdx.x) * 2) + 128) % 144)))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 129))] = data[(((((rc_outer_outer * 2592) + ((((((int)threadIdx.x) * 2) + 129) / 144) * 1296)) + ((((int)blockIdx.x) % 17) * 72)) + (((((int)threadIdx.x) * 2) + 129) % 144)))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 192))] = data[(((((rc_outer_outer * 2592) + ((((((int)threadIdx.x) * 2) + 192) / 144) * 1296)) + ((((int)blockIdx.x) % 17) * 72)) + ((((int)threadIdx.x) * 2) + 48)))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 193))] = data[(((((rc_outer_outer * 2592) + ((((((int)threadIdx.x) * 2) + 193) / 144) * 1296)) + ((((int)blockIdx.x) % 17) * 72)) + ((((int)threadIdx.x) * 2) + 49)))];
    if (((int)threadIdx.x) < 16) {
      pad_temp_shared[(((((int)threadIdx.x) * 2) + 256))] = data[(((((rc_outer_outer * 2592) + ((((((int)threadIdx.x) * 2) + 256) / 144) * 1296)) + ((((int)blockIdx.x) % 17) * 72)) + ((((int)threadIdx.x) * 2) + 112)))];
    }
    if (((int)threadIdx.x) < 16) {
      pad_temp_shared[(((((int)threadIdx.x) * 2) + 257))] = data[(((((rc_outer_outer * 2592) + ((((((int)threadIdx.x) * 2) + 257) / 144) * 1296)) + ((((int)blockIdx.x) % 17) * 72)) + ((((int)threadIdx.x) * 2) + 113)))];
    }
      ((float2*)(kernel_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(kernel + ((((((((int)blockIdx.x) / 17) * 73728) + ((((int)threadIdx.x) / 9) * 2304)) + (rc_outer_outer * 18)) + ((((int)threadIdx.x) % 9) * 2)))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 64))))[0] = ((float2*)(kernel + ((((((((int)blockIdx.x) / 17) * 73728) + ((((((int)threadIdx.x) * 2) + 64) / 18) * 2304)) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 10) % 18)))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 128))))[0] = ((float2*)(kernel + ((((((((int)blockIdx.x) / 17) * 73728) + ((((((int)threadIdx.x) * 2) + 128) / 18) * 2304)) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 2) % 18)))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 192))))[0] = ((float2*)(kernel + ((((((((int)blockIdx.x) / 17) * 73728) + ((((((int)threadIdx.x) * 2) + 192) / 18) * 2304)) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 12) % 18)))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 256))))[0] = ((float2*)(kernel + ((((((((int)blockIdx.x) / 17) * 73728) + ((((((int)threadIdx.x) * 2) + 256) / 18) * 2304)) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 4) % 18)))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 320))))[0] = ((float2*)(kernel + ((((((((int)blockIdx.x) / 17) * 73728) + ((((((int)threadIdx.x) * 2) + 320) / 18) * 2304)) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 14) % 18)))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 384))))[0] = ((float2*)(kernel + ((((((((int)blockIdx.x) / 17) * 73728) + ((((((int)threadIdx.x) * 2) + 384) / 18) * 2304)) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 6) % 18)))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 448))))[0] = ((float2*)(kernel + ((((((((int)blockIdx.x) / 17) * 73728) + ((((((int)threadIdx.x) * 2) + 448) / 18) * 2304)) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 16) % 18)))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 512))))[0] = ((float2*)(kernel + ((((((((int)blockIdx.x) / 17) * 73728) + ((((((int)threadIdx.x) * 2) + 512) / 18) * 2304)) + (rc_outer_outer * 18)) + (((((int)threadIdx.x) * 2) + 8) % 18)))))[0];
    __syncthreads();
    for (int ry_outer_inner = 0; ry_outer_inner < 3; ++ry_outer_inner) {
      for (int ff_c_outer_inner = 0; ff_c_outer_inner < 2; ++ff_c_outer_inner) {
        for (int xx_c_outer_inner = 0; xx_c_outer_inner < 17; ++xx_c_outer_inner) {
          compute_local[(((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)))] = (compute_local[(((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)))] + (pad_temp_shared[((((ry_outer_inner * 36) + ((((int)threadIdx.x) & 1) * 36)) + (xx_c_outer_inner * 2)))] * kernel_shared[(((((((int)threadIdx.x) >> 1) * 36) + (ff_c_outer_inner * 18)) + (ry_outer_inner * 3)))]));
          compute_local[((((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)) + 1))] = (compute_local[((((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)) + 1))] + (pad_temp_shared[(((((ry_outer_inner * 36) + ((((int)threadIdx.x) & 1) * 36)) + (xx_c_outer_inner * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) >> 1) * 36) + (ff_c_outer_inner * 18)) + (ry_outer_inner * 3)))]));
          compute_local[(((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)))] = (compute_local[(((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)))] + (pad_temp_shared[(((((ry_outer_inner * 36) + ((((int)threadIdx.x) & 1) * 36)) + (xx_c_outer_inner * 2)) + 1))] * kernel_shared[((((((((int)threadIdx.x) >> 1) * 36) + (ff_c_outer_inner * 18)) + (ry_outer_inner * 3)) + 1))]));
          compute_local[((((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)) + 1))] = (compute_local[((((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)) + 1))] + (pad_temp_shared[(((((ry_outer_inner * 36) + ((((int)threadIdx.x) & 1) * 36)) + (xx_c_outer_inner * 2)) + 2))] * kernel_shared[((((((((int)threadIdx.x) >> 1) * 36) + (ff_c_outer_inner * 18)) + (ry_outer_inner * 3)) + 1))]));
          compute_local[(((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)))] = (compute_local[(((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)))] + (pad_temp_shared[(((((ry_outer_inner * 36) + ((((int)threadIdx.x) & 1) * 36)) + (xx_c_outer_inner * 2)) + 2))] * kernel_shared[((((((((int)threadIdx.x) >> 1) * 36) + (ff_c_outer_inner * 18)) + (ry_outer_inner * 3)) + 2))]));
          compute_local[((((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)) + 1))] = (compute_local[((((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)) + 1))] + (pad_temp_shared[(((((ry_outer_inner * 36) + ((((int)threadIdx.x) & 1) * 36)) + (xx_c_outer_inner * 2)) + 3))] * kernel_shared[((((((((int)threadIdx.x) >> 1) * 36) + (ff_c_outer_inner * 18)) + (ry_outer_inner * 3)) + 2))]));
          compute_local[(((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)))] = (compute_local[(((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)))] + (pad_temp_shared[(((((ry_outer_inner * 36) + ((((int)threadIdx.x) & 1) * 36)) + (xx_c_outer_inner * 2)) + 144))] * kernel_shared[((((((((int)threadIdx.x) >> 1) * 36) + (ff_c_outer_inner * 18)) + (ry_outer_inner * 3)) + 9))]));
          compute_local[((((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)) + 1))] = (compute_local[((((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)) + 1))] + (pad_temp_shared[(((((ry_outer_inner * 36) + ((((int)threadIdx.x) & 1) * 36)) + (xx_c_outer_inner * 2)) + 145))] * kernel_shared[((((((((int)threadIdx.x) >> 1) * 36) + (ff_c_outer_inner * 18)) + (ry_outer_inner * 3)) + 9))]));
          compute_local[(((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)))] = (compute_local[(((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)))] + (pad_temp_shared[(((((ry_outer_inner * 36) + ((((int)threadIdx.x) & 1) * 36)) + (xx_c_outer_inner * 2)) + 145))] * kernel_shared[((((((((int)threadIdx.x) >> 1) * 36) + (ff_c_outer_inner * 18)) + (ry_outer_inner * 3)) + 10))]));
          compute_local[((((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)) + 1))] = (compute_local[((((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)) + 1))] + (pad_temp_shared[(((((ry_outer_inner * 36) + ((((int)threadIdx.x) & 1) * 36)) + (xx_c_outer_inner * 2)) + 146))] * kernel_shared[((((((((int)threadIdx.x) >> 1) * 36) + (ff_c_outer_inner * 18)) + (ry_outer_inner * 3)) + 10))]));
          compute_local[(((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)))] = (compute_local[(((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)))] + (pad_temp_shared[(((((ry_outer_inner * 36) + ((((int)threadIdx.x) & 1) * 36)) + (xx_c_outer_inner * 2)) + 146))] * kernel_shared[((((((((int)threadIdx.x) >> 1) * 36) + (ff_c_outer_inner * 18)) + (ry_outer_inner * 3)) + 11))]));
          compute_local[((((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)) + 1))] = (compute_local[((((ff_c_outer_inner * 34) + (xx_c_outer_inner * 2)) + 1))] + (pad_temp_shared[(((((ry_outer_inner * 36) + ((((int)threadIdx.x) & 1) * 36)) + (xx_c_outer_inner * 2)) + 147))] * kernel_shared[((((((((int)threadIdx.x) >> 1) * 36) + (ff_c_outer_inner * 18)) + (ry_outer_inner * 3)) + 11))]));
        }
      }
    }
  }
  for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
    for (int xx_inner = 0; xx_inner < 34; ++xx_inner) {
      compute[((((((((((int)blockIdx.x) / 17) * 36992) + ((((int)threadIdx.x) >> 1) * 2312)) + (ff_inner * 1156)) + ((((int)blockIdx.x) % 17) * 68)) + ((((int)threadIdx.x) & 1) * 34)) + xx_inner))] = compute_local[(((ff_inner * 34) + xx_inner))];
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

dim3 size_block(32,1,1);
 
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
            