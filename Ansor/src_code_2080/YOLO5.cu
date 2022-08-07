
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[32];
  __shared__ float pad_temp_shared[4352];
  __shared__ float kernel_shared[1024];
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
  compute_local[(16)] = 0.000000e+00f;
  compute_local[(17)] = 0.000000e+00f;
  compute_local[(18)] = 0.000000e+00f;
  compute_local[(19)] = 0.000000e+00f;
  compute_local[(20)] = 0.000000e+00f;
  compute_local[(21)] = 0.000000e+00f;
  compute_local[(22)] = 0.000000e+00f;
  compute_local[(23)] = 0.000000e+00f;
  compute_local[(24)] = 0.000000e+00f;
  compute_local[(25)] = 0.000000e+00f;
  compute_local[(26)] = 0.000000e+00f;
  compute_local[(27)] = 0.000000e+00f;
  compute_local[(28)] = 0.000000e+00f;
  compute_local[(29)] = 0.000000e+00f;
  compute_local[(30)] = 0.000000e+00f;
  compute_local[(31)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
    __syncthreads();
      ((float4*)(pad_temp_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(data + (((((rc_outer_outer * 147968) + ((((int)threadIdx.x) / 34) * 4624)) + ((((int)blockIdx.x) % 34) * 136)) + ((((int)threadIdx.x) % 34) * 4)))))[0];
      ((float4*)(pad_temp_shared + (((((int)threadIdx.x) * 4) + 544))))[0] = ((float4*)(data + ((((((rc_outer_outer * 147968) + ((((int)threadIdx.x) / 34) * 4624)) + ((((int)blockIdx.x) % 34) * 136)) + ((((int)threadIdx.x) % 34) * 4)) + 18496))))[0];
      ((float4*)(pad_temp_shared + (((((int)threadIdx.x) * 4) + 1088))))[0] = ((float4*)(data + ((((((rc_outer_outer * 147968) + ((((int)threadIdx.x) / 34) * 4624)) + ((((int)blockIdx.x) % 34) * 136)) + ((((int)threadIdx.x) % 34) * 4)) + 36992))))[0];
      ((float4*)(pad_temp_shared + (((((int)threadIdx.x) * 4) + 1632))))[0] = ((float4*)(data + ((((((rc_outer_outer * 147968) + ((((int)threadIdx.x) / 34) * 4624)) + ((((int)blockIdx.x) % 34) * 136)) + ((((int)threadIdx.x) % 34) * 4)) + 55488))))[0];
      ((float4*)(pad_temp_shared + (((((int)threadIdx.x) * 4) + 2176))))[0] = ((float4*)(data + ((((((rc_outer_outer * 147968) + ((((int)threadIdx.x) / 34) * 4624)) + ((((int)blockIdx.x) % 34) * 136)) + ((((int)threadIdx.x) % 34) * 4)) + 73984))))[0];
      ((float4*)(pad_temp_shared + (((((int)threadIdx.x) * 4) + 2720))))[0] = ((float4*)(data + ((((((rc_outer_outer * 147968) + ((((int)threadIdx.x) / 34) * 4624)) + ((((int)blockIdx.x) % 34) * 136)) + ((((int)threadIdx.x) % 34) * 4)) + 92480))))[0];
      ((float4*)(pad_temp_shared + (((((int)threadIdx.x) * 4) + 3264))))[0] = ((float4*)(data + ((((((rc_outer_outer * 147968) + ((((int)threadIdx.x) / 34) * 4624)) + ((((int)blockIdx.x) % 34) * 136)) + ((((int)threadIdx.x) % 34) * 4)) + 110976))))[0];
      ((float4*)(pad_temp_shared + (((((int)threadIdx.x) * 4) + 3808))))[0] = ((float4*)(data + ((((((rc_outer_outer * 147968) + ((((int)threadIdx.x) / 34) * 4624)) + ((((int)blockIdx.x) % 34) * 136)) + ((((int)threadIdx.x) % 34) * 4)) + 129472))))[0];
    kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 34) * 8192) + ((((int)threadIdx.x) >> 5) * 256)) + (rc_outer_outer * 32)) + (((int)threadIdx.x) & 31)))];
    kernel_shared[((((int)threadIdx.x) + 136))] = kernel[((((((((int)blockIdx.x) / 34) * 8192) + (((((int)threadIdx.x) + 136) >> 5) * 256)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) + 8) & 31)))];
    kernel_shared[((((int)threadIdx.x) + 272))] = kernel[((((((((int)blockIdx.x) / 34) * 8192) + (((((int)threadIdx.x) + 272) >> 5) * 256)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) + 16) & 31)))];
    kernel_shared[((((int)threadIdx.x) + 408))] = kernel[((((((((int)blockIdx.x) / 34) * 8192) + (((((int)threadIdx.x) + 408) >> 5) * 256)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) + 24) & 31)))];
    kernel_shared[((((int)threadIdx.x) + 544))] = kernel[(((((((((int)blockIdx.x) / 34) * 8192) + ((((int)threadIdx.x) >> 5) * 256)) + (rc_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 4352))];
    kernel_shared[((((int)threadIdx.x) + 680))] = kernel[((((((((int)blockIdx.x) / 34) * 8192) + (((((int)threadIdx.x) + 680) >> 5) * 256)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) + 8) & 31)))];
    kernel_shared[((((int)threadIdx.x) + 816))] = kernel[((((((((int)blockIdx.x) / 34) * 8192) + (((((int)threadIdx.x) + 816) >> 5) * 256)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) + 16) & 31)))];
    if (((int)threadIdx.x) < 72) {
      kernel_shared[((((int)threadIdx.x) + 952))] = kernel[((((((((int)blockIdx.x) / 34) * 8192) + (((((int)threadIdx.x) + 952) >> 5) * 256)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) + 24) & 31)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 32))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 32))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 1))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 1))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 33))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 33))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 2))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 2))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 34))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 34))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 3))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 3))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 35))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 35))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 64))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 64))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 96))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 96))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 65))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 65))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 97))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 97))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 66))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 66))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 98))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 98))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 67))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 67))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 99))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 99))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 128))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 128))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 160))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 160))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 129))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 129))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 161))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 161))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 130))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 130))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 162))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 162))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 131))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 131))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 163))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 163))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 192))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 192))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 224))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 224))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 193))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 193))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 225))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 225))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 194))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 194))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 226))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 226))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 195))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 195))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 227))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 227))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 256))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 256))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 288))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 288))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 257))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 257))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 289))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 289))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 258))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 258))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 290))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 290))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 259))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 259))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 291))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 291))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 320))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 320))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 352))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 352))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 321))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 321))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 353))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 353))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 322))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 322))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 354))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 354))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 323))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 323))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 355))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 355))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 384))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 384))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 416))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 416))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 385))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 385))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 417))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 417))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 386))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 386))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 418))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 418))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 387))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 387))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 419))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 419))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 448))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 448))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[(((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 480))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 480))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 449))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 449))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 481))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 137))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 481))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 450))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 450))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 482))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 273))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 482))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 451))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 451))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 483))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 544) + ((((int)threadIdx.x) % 68) * 2)) + 409))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 512) + (rc_outer_inner * 4)) + 483))]));
    }
  }
  for (int ff_inner = 0; ff_inner < 16; ++ff_inner) {
    for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
      compute[((((((((((int)blockIdx.x) / 34) * 147968) + ((((int)threadIdx.x) / 68) * 73984)) + (ff_inner * 4624)) + ((((int)blockIdx.x) % 34) * 136)) + ((((int)threadIdx.x) % 68) * 2)) + xx_inner))] = compute_local[(((ff_inner * 2) + xx_inner))];
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
            