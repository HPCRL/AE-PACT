
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[4];
  __shared__ float pad_temp_shared[640];
  __shared__ float kernel_shared[576];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[(((int)threadIdx.x))] = data[((((((rc_outer_outer * 25088) + (((((int)blockIdx.x) % 81) / 3) * 112)) + ((((int)threadIdx.x) / 20) * 56)) + ((((int)blockIdx.x) % 3) * 18)) + (((int)threadIdx.x) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 72))] = data[(((((((rc_outer_outer * 25088) + (((((int)threadIdx.x) + 72) / 80) * 3136)) + (((((int)blockIdx.x) % 81) / 3) * 112)) + ((((((int)threadIdx.x) + 72) % 80) / 20) * 56)) + ((((int)blockIdx.x) % 3) * 18)) + ((((int)threadIdx.x) + 12) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 144))] = data[(((((((rc_outer_outer * 25088) + (((((int)threadIdx.x) + 144) / 80) * 3136)) + (((((int)blockIdx.x) % 81) / 3) * 112)) + ((((((int)threadIdx.x) + 64) % 80) / 20) * 56)) + ((((int)blockIdx.x) % 3) * 18)) + ((((int)threadIdx.x) + 4) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 216))] = data[(((((((rc_outer_outer * 25088) + (((((int)threadIdx.x) + 216) / 80) * 3136)) + (((((int)blockIdx.x) % 81) / 3) * 112)) + ((((((int)threadIdx.x) + 56) % 80) / 20) * 56)) + ((((int)blockIdx.x) % 3) * 18)) + ((((int)threadIdx.x) + 16) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 288))] = data[(((((((rc_outer_outer * 25088) + (((((int)threadIdx.x) + 288) / 80) * 3136)) + (((((int)blockIdx.x) % 81) / 3) * 112)) + ((((((int)threadIdx.x) + 48) % 80) / 20) * 56)) + ((((int)blockIdx.x) % 3) * 18)) + ((((int)threadIdx.x) + 8) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 360))] = data[(((((((rc_outer_outer * 25088) + (((((int)threadIdx.x) + 360) / 80) * 3136)) + (((((int)blockIdx.x) % 81) / 3) * 112)) + ((((((int)threadIdx.x) + 40) % 80) / 20) * 56)) + ((((int)blockIdx.x) % 3) * 18)) + (((int)threadIdx.x) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 432))] = data[(((((((rc_outer_outer * 25088) + (((((int)threadIdx.x) + 432) / 80) * 3136)) + (((((int)blockIdx.x) % 81) / 3) * 112)) + ((((((int)threadIdx.x) + 32) % 80) / 20) * 56)) + ((((int)blockIdx.x) % 3) * 18)) + ((((int)threadIdx.x) + 12) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 504))] = data[(((((((rc_outer_outer * 25088) + (((((int)threadIdx.x) + 504) / 80) * 3136)) + (((((int)blockIdx.x) % 81) / 3) * 112)) + ((((((int)threadIdx.x) + 24) % 80) / 20) * 56)) + ((((int)blockIdx.x) % 3) * 18)) + ((((int)threadIdx.x) + 4) % 20)))];
    if (((int)threadIdx.x) < 64) {
      pad_temp_shared[((((int)threadIdx.x) + 576))] = data[(((((((rc_outer_outer * 25088) + (((((int)threadIdx.x) + 576) / 80) * 3136)) + (((((int)blockIdx.x) % 81) / 3) * 112)) + (((((int)threadIdx.x) + 16) / 20) * 56)) + ((((int)blockIdx.x) % 3) * 18)) + ((((int)threadIdx.x) + 16) % 20)))];
    }
      ((float2*)(kernel_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(kernel + ((((((((int)blockIdx.x) / 81) * 2304) + ((((int)threadIdx.x) / 36) * 288)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 36) * 2)))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 144))))[0] = ((float2*)(kernel + (((((((((int)blockIdx.x) / 81) * 2304) + ((((int)threadIdx.x) / 36) * 288)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 36) * 2)) + 576))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 288))))[0] = ((float2*)(kernel + (((((((((int)blockIdx.x) / 81) * 2304) + ((((int)threadIdx.x) / 36) * 288)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 36) * 2)) + 1152))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 432))))[0] = ((float2*)(kernel + (((((((((int)blockIdx.x) / 81) * 2304) + ((((int)threadIdx.x) / 36) * 288)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 36) * 2)) + 1728))))[0];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      for (int xx_c_outer_inner = 0; xx_c_outer_inner < 2; ++xx_c_outer_inner) {
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner))] * kernel_shared[((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 20))] * kernel_shared[((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 1))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 21))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 1))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 2))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 22))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 2))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 20))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 3))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 40))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 3))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 21))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 4))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 41))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 4))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 22))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 5))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 42))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 5))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 40))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 6))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 60))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 6))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 41))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 7))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 61))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 7))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 42))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 8))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 62))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 8))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 80))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 9))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 100))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 9))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 81))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 10))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 101))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 10))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 82))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 11))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 11))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 100))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 12))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 120))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 12))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 101))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 13))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 121))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 13))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 14))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 122))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 14))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 120))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 15))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 15))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 121))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 16))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 16))]));
        compute_local[(xx_c_outer_inner)] = (compute_local[(xx_c_outer_inner)] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 122))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 17))]));
        compute_local[((xx_c_outer_inner + 2))] = (compute_local[((xx_c_outer_inner + 2))] + (pad_temp_shared[(((((rc_outer_inner * 160) + ((((int)threadIdx.x) % 9) * 2)) + xx_c_outer_inner) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 9) * 72) + (rc_outer_inner * 18)) + 17))]));
      }
    }
  }
  for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
    compute[((((((((((int)blockIdx.x) / 81) * 23328) + ((((int)threadIdx.x) / 9) * 2916)) + (((((int)blockIdx.x) % 81) / 3) * 108)) + ((((int)blockIdx.x) % 3) * 18)) + ((((int)threadIdx.x) % 9) * 2)) + xx_inner))] = compute_local[(xx_inner)];
    compute[(((((((((((int)blockIdx.x) / 81) * 23328) + ((((int)threadIdx.x) / 9) * 2916)) + (((((int)blockIdx.x) % 81) / 3) * 108)) + ((((int)blockIdx.x) % 3) * 18)) + ((((int)threadIdx.x) % 9) * 2)) + xx_inner) + 54))] = compute_local[((xx_inner + 2))];
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
                    
dim3 size_grid(648,1,1);

dim3 size_block(72,1,1);
 
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
            