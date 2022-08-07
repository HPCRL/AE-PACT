
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[34];
  __shared__ float pad_temp_shared[228];
  __shared__ float kernel_shared[2304];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(17)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(18)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(19)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(20)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(21)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(22)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(23)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  compute_local[(24)] = 0.000000e+00f;
  compute_local[(8)] = 0.000000e+00f;
  compute_local[(25)] = 0.000000e+00f;
  compute_local[(9)] = 0.000000e+00f;
  compute_local[(26)] = 0.000000e+00f;
  compute_local[(10)] = 0.000000e+00f;
  compute_local[(27)] = 0.000000e+00f;
  compute_local[(11)] = 0.000000e+00f;
  compute_local[(28)] = 0.000000e+00f;
  compute_local[(12)] = 0.000000e+00f;
  compute_local[(29)] = 0.000000e+00f;
  compute_local[(13)] = 0.000000e+00f;
  compute_local[(30)] = 0.000000e+00f;
  compute_local[(14)] = 0.000000e+00f;
  compute_local[(31)] = 0.000000e+00f;
  compute_local[(15)] = 0.000000e+00f;
  compute_local[(32)] = 0.000000e+00f;
  compute_local[(16)] = 0.000000e+00f;
  compute_local[(33)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[(((int)threadIdx.x))] = data[(((((rc_outer_outer * 1444) + ((((int)threadIdx.x) / 3) * 19)) + (((int)blockIdx.x) % 17)) + (((int)threadIdx.x) % 3)))];
    pad_temp_shared[((((int)threadIdx.x) + 32))] = data[(((((rc_outer_outer * 1444) + (((((int)threadIdx.x) + 32) / 3) * 19)) + (((int)blockIdx.x) % 17)) + ((((int)threadIdx.x) + 2) % 3)))];
    pad_temp_shared[((((int)threadIdx.x) + 64))] = data[(((((rc_outer_outer * 1444) + (((((int)threadIdx.x) + 64) / 3) * 19)) + (((int)blockIdx.x) % 17)) + ((((int)threadIdx.x) + 1) % 3)))];
    pad_temp_shared[((((int)threadIdx.x) + 96))] = data[((((((rc_outer_outer * 1444) + ((((int)threadIdx.x) / 3) * 19)) + (((int)blockIdx.x) % 17)) + (((int)threadIdx.x) % 3)) + 608))];
    pad_temp_shared[((((int)threadIdx.x) + 128))] = data[(((((rc_outer_outer * 1444) + (((((int)threadIdx.x) + 128) / 3) * 19)) + (((int)blockIdx.x) % 17)) + ((((int)threadIdx.x) + 2) % 3)))];
    pad_temp_shared[((((int)threadIdx.x) + 160))] = data[(((((rc_outer_outer * 1444) + (((((int)threadIdx.x) + 160) / 3) * 19)) + (((int)blockIdx.x) % 17)) + ((((int)threadIdx.x) + 1) % 3)))];
    pad_temp_shared[((((int)threadIdx.x) + 192))] = data[((((((rc_outer_outer * 1444) + ((((int)threadIdx.x) / 3) * 19)) + (((int)blockIdx.x) % 17)) + (((int)threadIdx.x) % 3)) + 1216))];
    if (((int)threadIdx.x) < 4) {
      pad_temp_shared[((((int)threadIdx.x) + 224))] = data[(((((rc_outer_outer * 1444) + (((((int)threadIdx.x) + 224) / 3) * 19)) + (((int)blockIdx.x) % 17)) + ((((int)threadIdx.x) + 2) % 3)))];
    }
      ((float4*)(kernel_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((int)threadIdx.x) / 9) * 4608)) + (rc_outer_outer * 36)) + ((((int)threadIdx.x) % 9) * 4)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 128))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 128) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 20) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 256))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 256) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 4) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 384))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 384) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 24) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 512))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 512) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 8) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 640))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 640) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 28) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 768))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 768) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 12) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 896))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 896) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 32) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 1024))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 1024) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 16) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 1152))))[0] = ((float4*)(kernel + (((((((((int)blockIdx.x) / 17) * 294912) + ((((int)threadIdx.x) / 9) * 4608)) + (rc_outer_outer * 36)) + ((((int)threadIdx.x) % 9) * 4)) + 147456))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 1280))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 1280) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 20) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 1408))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 1408) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 4) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 1536))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 1536) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 24) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 1664))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 1664) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 8) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 1792))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 1792) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 28) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 1920))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 1920) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 12) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 2048))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 2048) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 32) % 36)))))[0];
      ((float4*)(kernel_shared + (((((int)threadIdx.x) * 4) + 2176))))[0] = ((float4*)(kernel + ((((((((int)blockIdx.x) / 17) * 294912) + ((((((int)threadIdx.x) * 4) + 2176) / 36) * 4608)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) * 4) + 16) % 36)))))[0];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((rc_outer_inner * 57))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((rc_outer_inner * 57))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 57) + 1))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[(((rc_outer_inner * 57) + 1))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 57) + 2))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[(((rc_outer_inner * 57) + 2))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((rc_outer_inner * 57) + 3))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[(((rc_outer_inner * 57) + 3))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((rc_outer_inner * 57) + 4))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[(((rc_outer_inner * 57) + 4))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((rc_outer_inner * 57) + 5))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[(((rc_outer_inner * 57) + 5))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((rc_outer_inner * 57) + 6))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[(((rc_outer_inner * 57) + 6))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((rc_outer_inner * 57) + 7))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[(((rc_outer_inner * 57) + 7))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((rc_outer_inner * 57) + 8))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[(((rc_outer_inner * 57) + 8))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((rc_outer_inner * 57) + 9))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[(((rc_outer_inner * 57) + 9))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((rc_outer_inner * 57) + 10))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[(((rc_outer_inner * 57) + 10))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((rc_outer_inner * 57) + 11))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[(((rc_outer_inner * 57) + 11))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 57) + 12))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[(((rc_outer_inner * 57) + 12))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 57) + 13))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[(((rc_outer_inner * 57) + 13))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 57) + 14))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[(((rc_outer_inner * 57) + 14))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((rc_outer_inner * 57) + 15))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[(((rc_outer_inner * 57) + 15))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((rc_outer_inner * 57) + 16))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[(((rc_outer_inner * 57) + 16))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((rc_outer_inner * 57) + 17))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[(((rc_outer_inner * 57) + 17))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((rc_outer_inner * 57) + 18))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[(((rc_outer_inner * 57) + 18))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((rc_outer_inner * 57) + 19))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[(((rc_outer_inner * 57) + 19))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((rc_outer_inner * 57) + 20))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[(((rc_outer_inner * 57) + 20))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((rc_outer_inner * 57) + 21))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[(((rc_outer_inner * 57) + 21))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((rc_outer_inner * 57) + 22))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[(((rc_outer_inner * 57) + 22))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((rc_outer_inner * 57) + 23))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[(((rc_outer_inner * 57) + 23))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((rc_outer_inner * 57) + 24))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[(((rc_outer_inner * 57) + 24))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((rc_outer_inner * 57) + 25))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[(((rc_outer_inner * 57) + 25))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((rc_outer_inner * 57) + 26))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[(((rc_outer_inner * 57) + 26))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((rc_outer_inner * 57) + 27))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[(((rc_outer_inner * 57) + 27))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((rc_outer_inner * 57) + 28))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[(((rc_outer_inner * 57) + 28))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((rc_outer_inner * 57) + 29))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[(((rc_outer_inner * 57) + 29))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((rc_outer_inner * 57) + 30))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[(((rc_outer_inner * 57) + 30))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((rc_outer_inner * 57) + 31))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[(((rc_outer_inner * 57) + 31))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((rc_outer_inner * 57) + 32))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[(((rc_outer_inner * 57) + 32))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((rc_outer_inner * 57) + 33))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[(((rc_outer_inner * 57) + 33))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((rc_outer_inner * 57) + 34))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[(((rc_outer_inner * 57) + 34))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((rc_outer_inner * 57) + 35))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[(((rc_outer_inner * 57) + 35))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((rc_outer_inner * 57) + 36))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[(((rc_outer_inner * 57) + 36))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((rc_outer_inner * 57) + 37))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[(((rc_outer_inner * 57) + 37))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((rc_outer_inner * 57) + 38))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[(((rc_outer_inner * 57) + 38))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((rc_outer_inner * 57) + 39))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[(((rc_outer_inner * 57) + 39))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((rc_outer_inner * 57) + 40))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[(((rc_outer_inner * 57) + 40))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((rc_outer_inner * 57) + 41))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[(((rc_outer_inner * 57) + 41))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((rc_outer_inner * 57) + 42))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[(((rc_outer_inner * 57) + 42))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((rc_outer_inner * 57) + 43))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[(((rc_outer_inner * 57) + 43))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((rc_outer_inner * 57) + 44))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[(((rc_outer_inner * 57) + 44))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((rc_outer_inner * 57) + 45))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared[(((rc_outer_inner * 57) + 45))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((rc_outer_inner * 57) + 46))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared[(((rc_outer_inner * 57) + 46))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((rc_outer_inner * 57) + 47))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared[(((rc_outer_inner * 57) + 47))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((rc_outer_inner * 57) + 48))] * kernel_shared[(((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)))]));
      compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared[(((rc_outer_inner * 57) + 48))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((rc_outer_inner * 57) + 49))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared[(((rc_outer_inner * 57) + 49))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((rc_outer_inner * 57) + 50))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared[(((rc_outer_inner * 57) + 50))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 57) + 3))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[(((rc_outer_inner * 57) + 3))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 57) + 4))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[(((rc_outer_inner * 57) + 4))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 57) + 5))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[(((rc_outer_inner * 57) + 5))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((rc_outer_inner * 57) + 6))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[(((rc_outer_inner * 57) + 6))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((rc_outer_inner * 57) + 7))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[(((rc_outer_inner * 57) + 7))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((rc_outer_inner * 57) + 8))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[(((rc_outer_inner * 57) + 8))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((rc_outer_inner * 57) + 9))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[(((rc_outer_inner * 57) + 9))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((rc_outer_inner * 57) + 10))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[(((rc_outer_inner * 57) + 10))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((rc_outer_inner * 57) + 11))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[(((rc_outer_inner * 57) + 11))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((rc_outer_inner * 57) + 12))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[(((rc_outer_inner * 57) + 12))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((rc_outer_inner * 57) + 13))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[(((rc_outer_inner * 57) + 13))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((rc_outer_inner * 57) + 14))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[(((rc_outer_inner * 57) + 14))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 57) + 15))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[(((rc_outer_inner * 57) + 15))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 57) + 16))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[(((rc_outer_inner * 57) + 16))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 57) + 17))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[(((rc_outer_inner * 57) + 17))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((rc_outer_inner * 57) + 18))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[(((rc_outer_inner * 57) + 18))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((rc_outer_inner * 57) + 19))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[(((rc_outer_inner * 57) + 19))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((rc_outer_inner * 57) + 20))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[(((rc_outer_inner * 57) + 20))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((rc_outer_inner * 57) + 21))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[(((rc_outer_inner * 57) + 21))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((rc_outer_inner * 57) + 22))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[(((rc_outer_inner * 57) + 22))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((rc_outer_inner * 57) + 23))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[(((rc_outer_inner * 57) + 23))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((rc_outer_inner * 57) + 24))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[(((rc_outer_inner * 57) + 24))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((rc_outer_inner * 57) + 25))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[(((rc_outer_inner * 57) + 25))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((rc_outer_inner * 57) + 26))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[(((rc_outer_inner * 57) + 26))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((rc_outer_inner * 57) + 27))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[(((rc_outer_inner * 57) + 27))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((rc_outer_inner * 57) + 28))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[(((rc_outer_inner * 57) + 28))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((rc_outer_inner * 57) + 29))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[(((rc_outer_inner * 57) + 29))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((rc_outer_inner * 57) + 30))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[(((rc_outer_inner * 57) + 30))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((rc_outer_inner * 57) + 31))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[(((rc_outer_inner * 57) + 31))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((rc_outer_inner * 57) + 32))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[(((rc_outer_inner * 57) + 32))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((rc_outer_inner * 57) + 33))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[(((rc_outer_inner * 57) + 33))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((rc_outer_inner * 57) + 34))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[(((rc_outer_inner * 57) + 34))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((rc_outer_inner * 57) + 35))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[(((rc_outer_inner * 57) + 35))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((rc_outer_inner * 57) + 36))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[(((rc_outer_inner * 57) + 36))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((rc_outer_inner * 57) + 37))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[(((rc_outer_inner * 57) + 37))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((rc_outer_inner * 57) + 38))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[(((rc_outer_inner * 57) + 38))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((rc_outer_inner * 57) + 39))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[(((rc_outer_inner * 57) + 39))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((rc_outer_inner * 57) + 40))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[(((rc_outer_inner * 57) + 40))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((rc_outer_inner * 57) + 41))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[(((rc_outer_inner * 57) + 41))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((rc_outer_inner * 57) + 42))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[(((rc_outer_inner * 57) + 42))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((rc_outer_inner * 57) + 43))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[(((rc_outer_inner * 57) + 43))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((rc_outer_inner * 57) + 44))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[(((rc_outer_inner * 57) + 44))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((rc_outer_inner * 57) + 45))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[(((rc_outer_inner * 57) + 45))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((rc_outer_inner * 57) + 46))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[(((rc_outer_inner * 57) + 46))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((rc_outer_inner * 57) + 47))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[(((rc_outer_inner * 57) + 47))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((rc_outer_inner * 57) + 48))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared[(((rc_outer_inner * 57) + 48))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((rc_outer_inner * 57) + 49))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared[(((rc_outer_inner * 57) + 49))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((rc_outer_inner * 57) + 50))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared[(((rc_outer_inner * 57) + 50))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((rc_outer_inner * 57) + 51))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared[(((rc_outer_inner * 57) + 51))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((rc_outer_inner * 57) + 52))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared[(((rc_outer_inner * 57) + 52))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((rc_outer_inner * 57) + 53))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared[(((rc_outer_inner * 57) + 53))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 57) + 6))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[(((rc_outer_inner * 57) + 6))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 57) + 7))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[(((rc_outer_inner * 57) + 7))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 57) + 8))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[(((rc_outer_inner * 57) + 8))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((rc_outer_inner * 57) + 9))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[(((rc_outer_inner * 57) + 9))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((rc_outer_inner * 57) + 10))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[(((rc_outer_inner * 57) + 10))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((rc_outer_inner * 57) + 11))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[(((rc_outer_inner * 57) + 11))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((rc_outer_inner * 57) + 12))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[(((rc_outer_inner * 57) + 12))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((rc_outer_inner * 57) + 13))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[(((rc_outer_inner * 57) + 13))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((rc_outer_inner * 57) + 14))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[(((rc_outer_inner * 57) + 14))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((rc_outer_inner * 57) + 15))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[(((rc_outer_inner * 57) + 15))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((rc_outer_inner * 57) + 16))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[(((rc_outer_inner * 57) + 16))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((rc_outer_inner * 57) + 17))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[(((rc_outer_inner * 57) + 17))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 57) + 18))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[(((rc_outer_inner * 57) + 18))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 57) + 19))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[(((rc_outer_inner * 57) + 19))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 57) + 20))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[(((rc_outer_inner * 57) + 20))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((rc_outer_inner * 57) + 21))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[(((rc_outer_inner * 57) + 21))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((rc_outer_inner * 57) + 22))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[(((rc_outer_inner * 57) + 22))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((rc_outer_inner * 57) + 23))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[(((rc_outer_inner * 57) + 23))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((rc_outer_inner * 57) + 24))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[(((rc_outer_inner * 57) + 24))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((rc_outer_inner * 57) + 25))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[(((rc_outer_inner * 57) + 25))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((rc_outer_inner * 57) + 26))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[(((rc_outer_inner * 57) + 26))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((rc_outer_inner * 57) + 27))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[(((rc_outer_inner * 57) + 27))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((rc_outer_inner * 57) + 28))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[(((rc_outer_inner * 57) + 28))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((rc_outer_inner * 57) + 29))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[(((rc_outer_inner * 57) + 29))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((rc_outer_inner * 57) + 30))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[(((rc_outer_inner * 57) + 30))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((rc_outer_inner * 57) + 31))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[(((rc_outer_inner * 57) + 31))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((rc_outer_inner * 57) + 32))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[(((rc_outer_inner * 57) + 32))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((rc_outer_inner * 57) + 33))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[(((rc_outer_inner * 57) + 33))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((rc_outer_inner * 57) + 34))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[(((rc_outer_inner * 57) + 34))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((rc_outer_inner * 57) + 35))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[(((rc_outer_inner * 57) + 35))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((rc_outer_inner * 57) + 36))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[(((rc_outer_inner * 57) + 36))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((rc_outer_inner * 57) + 37))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[(((rc_outer_inner * 57) + 37))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((rc_outer_inner * 57) + 38))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[(((rc_outer_inner * 57) + 38))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((rc_outer_inner * 57) + 39))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[(((rc_outer_inner * 57) + 39))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((rc_outer_inner * 57) + 40))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[(((rc_outer_inner * 57) + 40))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((rc_outer_inner * 57) + 41))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[(((rc_outer_inner * 57) + 41))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((rc_outer_inner * 57) + 42))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[(((rc_outer_inner * 57) + 42))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((rc_outer_inner * 57) + 43))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[(((rc_outer_inner * 57) + 43))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((rc_outer_inner * 57) + 44))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[(((rc_outer_inner * 57) + 44))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((rc_outer_inner * 57) + 45))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[(((rc_outer_inner * 57) + 45))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((rc_outer_inner * 57) + 46))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[(((rc_outer_inner * 57) + 46))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((rc_outer_inner * 57) + 47))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[(((rc_outer_inner * 57) + 47))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((rc_outer_inner * 57) + 48))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[(((rc_outer_inner * 57) + 48))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((rc_outer_inner * 57) + 49))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[(((rc_outer_inner * 57) + 49))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((rc_outer_inner * 57) + 50))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[(((rc_outer_inner * 57) + 50))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((rc_outer_inner * 57) + 51))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared[(((rc_outer_inner * 57) + 51))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((rc_outer_inner * 57) + 52))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared[(((rc_outer_inner * 57) + 52))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((rc_outer_inner * 57) + 53))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared[(((rc_outer_inner * 57) + 53))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((rc_outer_inner * 57) + 54))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared[(((rc_outer_inner * 57) + 54))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((rc_outer_inner * 57) + 55))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared[(((rc_outer_inner * 57) + 55))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((rc_outer_inner * 57) + 56))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared[(((rc_outer_inner * 57) + 56))] * kernel_shared[((((((int)threadIdx.x) * 72) + (rc_outer_inner * 9)) + 44))]));
    }
  }
  for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
    for (int yy_inner = 0; yy_inner < 17; ++yy_inner) {
      compute[(((((((((int)blockIdx.x) / 17) * 18496) + (((int)threadIdx.x) * 578)) + (ff_inner * 289)) + (yy_inner * 17)) + (((int)blockIdx.x) % 17)))] = compute_local[(((ff_inner * 17) + yy_inner))];
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
            