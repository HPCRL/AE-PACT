
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[16];
  __shared__ float pad_temp_shared[2176];
  __shared__ float kernel_shared[128];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  compute_local[(8)] = 0.000000e+00f;
  compute_local[(9)] = 0.000000e+00f;
  compute_local[(10)] = 0.000000e+00f;
  compute_local[(11)] = 0.000000e+00f;
  compute_local[(12)] = 0.000000e+00f;
  compute_local[(13)] = 0.000000e+00f;
  compute_local[(14)] = 0.000000e+00f;
  compute_local[(15)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
      ((float4*)(pad_temp_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(data + (((((rc_outer_outer * 36992) + ((((int)threadIdx.x) / 68) * 4624)) + ((((int)blockIdx.x) % 17) * 272)) + ((((int)threadIdx.x) % 68) * 4)))))[0];
      ((float4*)(pad_temp_shared + (((((int)threadIdx.x) * 4) + 1088))))[0] = ((float4*)(data + ((((((rc_outer_outer * 36992) + ((((int)threadIdx.x) / 68) * 4624)) + ((((int)blockIdx.x) % 17) * 272)) + ((((int)threadIdx.x) % 68) * 4)) + 18496))))[0];
    if (((int)threadIdx.x) < 128) {
      kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 17) * 4096) + ((((int)threadIdx.x) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    }
    __syncthreads();
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(0)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(1)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(8)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(9)]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(16)]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(17)]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(24)]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(25)]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(32)]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(33)]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(40)]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(41)]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(48)]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(49)]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(56)]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(57)]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(64)]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(65)]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(72)]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(73)]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(80)]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(81)]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(88)]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(89)]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(96)]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(97)]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(104)]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(105)]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(112)]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(113)]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((int)threadIdx.x))] * kernel_shared[(120)]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((int)threadIdx.x) + 272))] * kernel_shared[(121)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(2)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(3)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(10)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(11)]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(18)]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(19)]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(26)]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(27)]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(34)]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(35)]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(42)]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(43)]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(50)]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(51)]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(58)]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(59)]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(66)]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(67)]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(74)]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(75)]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(82)]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(83)]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(90)]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(91)]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(98)]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(99)]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(106)]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(107)]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(114)]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(115)]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((int)threadIdx.x) + 544))] * kernel_shared[(122)]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((int)threadIdx.x) + 816))] * kernel_shared[(123)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(4)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(5)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(12)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(13)]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(20)]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(21)]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(28)]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(29)]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(36)]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(37)]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(44)]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(45)]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(52)]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(53)]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(60)]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(61)]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(68)]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(69)]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(76)]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(77)]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(84)]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(85)]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(92)]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(93)]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(100)]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(101)]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(108)]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(109)]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(116)]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(117)]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((int)threadIdx.x) + 1088))] * kernel_shared[(124)]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((int)threadIdx.x) + 1360))] * kernel_shared[(125)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(6)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(7)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(14)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(15)]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(22)]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(23)]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(30)]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(31)]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(38)]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(39)]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(46)]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(47)]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(54)]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(55)]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(62)]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(63)]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(70)]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(71)]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(78)]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(79)]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(86)]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(87)]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(94)]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(95)]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(102)]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(103)]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(110)]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(111)]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(118)]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(119)]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((int)threadIdx.x) + 1632))] * kernel_shared[(126)]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((int)threadIdx.x) + 1904))] * kernel_shared[(127)]));
  }
  for (int ff_inner = 0; ff_inner < 16; ++ff_inner) {
    compute[((((((((int)blockIdx.x) / 17) * 73984) + (ff_inner * 4624)) + ((((int)blockIdx.x) % 17) * 272)) + ((int)threadIdx.x)))] = compute_local[(ff_inner)];
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

dim3 size_block(272,1,1);
 
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
            