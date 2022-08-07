
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[8];
  __shared__ float pad_temp_shared[3584];
  __shared__ float kernel_shared[512];
  for (int ff_c_outer_inner_init = 0; ff_c_outer_inner_init < 2; ++ff_c_outer_inner_init) {
    for (int ff_c_inner_init = 0; ff_c_inner_init < 2; ++ff_c_inner_init) {
      compute_local[(((ff_c_outer_inner_init * 2) + ff_c_inner_init))] = 0.000000e+00f;
      compute_local[((((ff_c_outer_inner_init * 2) + ff_c_inner_init) + 4))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 2; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 8; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
        ((float2*)(pad_temp_shared + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 2)))))[0] = ((float2*)(data + ((((((rc_outer_outer * 100352) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12544)) + ((((int)threadIdx.x) / 56) * 3136)) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) % 56) * 2)))))[0];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 7) + (((int)threadIdx.x) >> 5)) < 16) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 224) + ((int)threadIdx.x)) < 512) {
          if (((((((int)blockIdx.x) / 28) * 16) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 7)) + (((int)threadIdx.x) >> 5)) < 64) {
            kernel_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 224) + ((int)threadIdx.x)))] = kernel[(((((((((int)blockIdx.x) / 28) * 1024) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 448)) + ((((int)threadIdx.x) >> 5) * 64)) + (rc_outer_outer * 32)) + (((int)threadIdx.x) & 31)))];
          }
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int ff_c_outer_inner = 0; ff_c_outer_inner < 2; ++ff_c_outer_inner) {
        for (int rc_inner = 0; rc_inner < 16; ++rc_inner) {
          for (int ff_c_inner = 0; ff_c_inner < 2; ++ff_c_inner) {
            compute_local[(((ff_c_outer_inner * 2) + ff_c_inner))] = (compute_local[(((ff_c_outer_inner * 2) + ff_c_inner))] + (pad_temp_shared[((((rc_outer_inner * 1792) + (rc_inner * 112)) + (((int)threadIdx.x) % 112)))] * kernel_shared[(((((((((int)threadIdx.x) / 112) * 128) + (ff_c_outer_inner * 64)) + (ff_c_inner * 32)) + (rc_outer_inner * 16)) + rc_inner))]));
            compute_local[((((ff_c_outer_inner * 2) + ff_c_inner) + 4))] = (compute_local[((((ff_c_outer_inner * 2) + ff_c_inner) + 4))] + (pad_temp_shared[((((rc_outer_inner * 1792) + (rc_inner * 112)) + (((int)threadIdx.x) % 112)))] * kernel_shared[((((((((((int)threadIdx.x) / 112) * 128) + (ff_c_outer_inner * 64)) + (ff_c_inner * 32)) + (rc_outer_inner * 16)) + rc_inner) + 256))]));
          }
        }
      }
    }
  }
  for (int ff_inner = 0; ff_inner < 4; ++ff_inner) {
    compute[(((((((((int)blockIdx.x) / 28) * 50176) + ((((int)threadIdx.x) / 112) * 12544)) + (ff_inner * 3136)) + ((((int)blockIdx.x) % 28) * 112)) + (((int)threadIdx.x) % 112)))] = compute_local[(ff_inner)];
    compute[((((((((((int)blockIdx.x) / 28) * 50176) + ((((int)threadIdx.x) / 112) * 12544)) + (ff_inner * 3136)) + ((((int)blockIdx.x) % 28) * 112)) + (((int)threadIdx.x) % 112)) + 25088))] = compute_local[((ff_inner + 4))];
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
                    
dim3 size_grid(112,1,1);

dim3 size_block(224,1,1);
 
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
            