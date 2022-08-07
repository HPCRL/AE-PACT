
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[32];
  __shared__ float pad_temp_shared[1680];
  __shared__ float kernel_shared[1152];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(8)] = 0.000000e+00f;
  compute_local[(12)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(9)] = 0.000000e+00f;
  compute_local[(13)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(10)] = 0.000000e+00f;
  compute_local[(14)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  compute_local[(11)] = 0.000000e+00f;
  compute_local[(15)] = 0.000000e+00f;
  compute_local[(16)] = 0.000000e+00f;
  compute_local[(20)] = 0.000000e+00f;
  compute_local[(24)] = 0.000000e+00f;
  compute_local[(28)] = 0.000000e+00f;
  compute_local[(17)] = 0.000000e+00f;
  compute_local[(21)] = 0.000000e+00f;
  compute_local[(25)] = 0.000000e+00f;
  compute_local[(29)] = 0.000000e+00f;
  compute_local[(18)] = 0.000000e+00f;
  compute_local[(22)] = 0.000000e+00f;
  compute_local[(26)] = 0.000000e+00f;
  compute_local[(30)] = 0.000000e+00f;
  compute_local[(19)] = 0.000000e+00f;
  compute_local[(23)] = 0.000000e+00f;
  compute_local[(27)] = 0.000000e+00f;
  compute_local[(31)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 240) {
      pad_temp_shared[((((int)threadIdx.x) * 7))] = data[(((((rc_outer_outer * 19600) + ((((int)threadIdx.x) / 60) * 4900)) + ((((int)blockIdx.x) % 17) * 280)) + ((((int)threadIdx.x) % 60) * 7)))];
    }
    if (((int)threadIdx.x) < 240) {
      pad_temp_shared[(((((int)threadIdx.x) * 7) + 1))] = data[(((((rc_outer_outer * 19600) + ((((((int)threadIdx.x) * 7) + 1) / 420) * 4900)) + ((((int)blockIdx.x) % 17) * 280)) + (((((int)threadIdx.x) * 7) + 1) % 420)))];
    }
    if (((int)threadIdx.x) < 240) {
      pad_temp_shared[(((((int)threadIdx.x) * 7) + 2))] = data[(((((rc_outer_outer * 19600) + ((((((int)threadIdx.x) * 7) + 2) / 420) * 4900)) + ((((int)blockIdx.x) % 17) * 280)) + (((((int)threadIdx.x) * 7) + 2) % 420)))];
    }
    if (((int)threadIdx.x) < 240) {
      pad_temp_shared[(((((int)threadIdx.x) * 7) + 3))] = data[(((((rc_outer_outer * 19600) + ((((((int)threadIdx.x) * 7) + 3) / 420) * 4900)) + ((((int)blockIdx.x) % 17) * 280)) + (((((int)threadIdx.x) * 7) + 3) % 420)))];
    }
    if (((int)threadIdx.x) < 240) {
      pad_temp_shared[(((((int)threadIdx.x) * 7) + 4))] = data[(((((rc_outer_outer * 19600) + ((((((int)threadIdx.x) * 7) + 4) / 420) * 4900)) + ((((int)blockIdx.x) % 17) * 280)) + (((((int)threadIdx.x) * 7) + 4) % 420)))];
    }
    if (((int)threadIdx.x) < 240) {
      pad_temp_shared[(((((int)threadIdx.x) * 7) + 5))] = data[(((((rc_outer_outer * 19600) + ((((((int)threadIdx.x) * 7) + 5) / 420) * 4900)) + ((((int)blockIdx.x) % 17) * 280)) + (((((int)threadIdx.x) * 7) + 5) % 420)))];
    }
    if (((int)threadIdx.x) < 240) {
      pad_temp_shared[(((((int)threadIdx.x) * 7) + 6))] = data[(((((rc_outer_outer * 19600) + ((((((int)threadIdx.x) * 7) + 6) / 420) * 4900)) + ((((int)blockIdx.x) % 17) * 280)) + (((((int)threadIdx.x) * 7) + 6) % 420)))];
    }
    kernel_shared[((((int)threadIdx.x) * 3))] = kernel[((((((((int)blockIdx.x) / 17) * 36864) + ((((int)threadIdx.x) / 12) * 1152)) + (rc_outer_outer * 36)) + ((((int)threadIdx.x) % 12) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 1))] = kernel[(((((((((int)blockIdx.x) / 17) * 36864) + ((((int)threadIdx.x) / 12) * 1152)) + (rc_outer_outer * 36)) + ((((int)threadIdx.x) % 12) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 2))] = kernel[(((((((((int)blockIdx.x) / 17) * 36864) + ((((int)threadIdx.x) / 12) * 1152)) + (rc_outer_outer * 36)) + ((((int)threadIdx.x) % 12) * 3)) + 2))];
    if (((int)threadIdx.x) < 112) {
      kernel_shared[(((((int)threadIdx.x) * 3) + 816))] = kernel[((((((((int)blockIdx.x) / 17) * 36864) + (((((int)threadIdx.x) + 272) / 12) * 1152)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) + 8) % 12) * 3)))];
      kernel_shared[(((((int)threadIdx.x) * 3) + 817))] = kernel[(((((((((int)blockIdx.x) / 17) * 36864) + (((((int)threadIdx.x) + 272) / 12) * 1152)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) + 8) % 12) * 3)) + 1))];
      kernel_shared[(((((int)threadIdx.x) * 3) + 818))] = kernel[(((((((((int)blockIdx.x) / 17) * 36864) + (((((int)threadIdx.x) + 272) / 12) * 1152)) + (rc_outer_outer * 36)) + (((((int)threadIdx.x) + 8) % 12) * 3)) + 2))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)))] * kernel_shared[((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 72))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 108))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 75))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 111))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 78))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 114))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 72))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 108))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 75))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 111))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 78))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 114))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 72))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 108))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 75))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 111))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 78))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 114))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 36))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 72))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 108))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 3))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 39))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 75))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 111))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 350))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 6))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 350))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 42))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 350))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 78))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 350))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 114))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 144))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[(((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 180))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[(((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 216))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[(((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 252))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 147))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 183))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 219))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 255))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 150))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 186))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 222))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 258))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 144))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 180))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 216))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 70))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 252))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 147))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 183))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 219))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 255))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 150))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 186))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 222))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 258))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 144))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 180))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 216))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 140))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 252))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 147))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 183))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 219))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 255))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 150))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 186))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 222))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 258))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 144))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 180))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 216))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 210))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 252))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 147))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 183))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 219))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 255))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 350))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 150))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 350))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 186))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 350))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 222))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 350))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 258))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 73))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 109))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 76))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 112))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 79))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 115))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 73))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 109))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 76))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 112))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 79))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 115))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 73))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 109))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 76))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 112))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 79))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 115))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 1))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 37))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 73))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 109))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 4))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 40))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 76))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 112))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 351))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 7))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 351))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 43))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 351))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 79))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 351))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 115))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 145))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 181))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 217))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 253))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 148))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 184))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 220))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 256))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 151))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 187))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 223))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 259))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 145))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 181))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 217))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 71))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 253))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 148))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 184))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 220))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 256))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 151))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 187))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 223))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 259))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 145))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 181))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 217))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 141))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 253))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 148))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 184))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 220))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 256))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 151))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 187))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 223))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 259))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 145))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 181))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 217))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 211))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 253))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 148))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 184))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 220))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 256))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 351))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 151))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 351))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 187))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 351))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 223))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 351))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 259))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 74))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 110))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 77))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 113))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 80))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 116))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 74))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 110))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 77))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 113))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 80))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 116))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 74))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 110))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 77))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 113))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 80))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 116))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 2))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 38))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 74))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 110))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 5))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 41))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 77))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 113))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 352))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 8))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 352))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 44))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 352))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 80))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 352))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 116))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 146))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 182))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 218))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 254))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 149))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 185))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 221))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 257))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 152))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 188))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 224))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 260))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 146))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 182))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 218))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 72))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 254))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 149))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 185))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 221))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 257))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 152))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 188))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 224))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 260))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 146))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 182))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 218))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 142))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 254))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 149))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 185))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 221))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 257))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 152))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 188))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 224))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 260))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 146))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 182))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 218))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 212))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 254))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 149))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 185))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 221))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 257))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 352))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 152))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 352))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 188))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 352))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 224))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 420) + (((int)threadIdx.x) % 68)) + 352))] * kernel_shared[(((((((int)threadIdx.x) / 68) * 288) + (rc_outer_inner * 9)) + 260))]));
    }
  }
  for (int ff_inner = 0; ff_inner < 8; ++ff_inner) {
    for (int yy_inner = 0; yy_inner < 4; ++yy_inner) {
      compute[((((((((((int)blockIdx.x) / 17) * 147968) + ((((int)threadIdx.x) / 68) * 36992)) + (ff_inner * 4624)) + ((((int)blockIdx.x) % 17) * 272)) + (yy_inner * 68)) + (((int)threadIdx.x) % 68)))] = compute_local[(((ff_inner * 4) + yy_inner))];
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
            