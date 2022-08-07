
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[32];
  __shared__ float pad_temp_shared[420];
  __shared__ float kernel_shared[144];
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
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[((((int)threadIdx.x) * 2))] = data[((((((rc_outer_outer * 75076) + (((((int)blockIdx.x) % 272) >> 2) * 1096)) + ((((int)threadIdx.x) / 35) * 274)) + ((((int)blockIdx.x) & 3) * 68)) + ((((int)threadIdx.x) % 35) * 2)))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 1))] = data[((((((rc_outer_outer * 75076) + (((((int)blockIdx.x) % 272) >> 2) * 1096)) + ((((((int)threadIdx.x) * 2) + 1) / 70) * 274)) + ((((int)blockIdx.x) & 3) * 68)) + (((((int)threadIdx.x) * 2) + 1) % 70)))];
    if (((int)threadIdx.x) < 74) {
      pad_temp_shared[(((((int)threadIdx.x) * 2) + 272))] = data[((((((rc_outer_outer * 75076) + (((((int)blockIdx.x) % 272) >> 2) * 1096)) + ((((((int)threadIdx.x) * 2) + 272) / 70) * 274)) + ((((int)blockIdx.x) & 3) * 68)) + (((((int)threadIdx.x) * 2) + 62) % 70)))];
    }
    if (((int)threadIdx.x) < 74) {
      pad_temp_shared[(((((int)threadIdx.x) * 2) + 273))] = data[((((((rc_outer_outer * 75076) + (((((int)blockIdx.x) % 272) >> 2) * 1096)) + ((((((int)threadIdx.x) * 2) + 273) / 70) * 274)) + ((((int)blockIdx.x) & 3) * 68)) + (((((int)threadIdx.x) * 2) + 63) % 70)))];
    }
    kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 272) * 4608) + ((((int)threadIdx.x) / 9) * 288)) + (rc_outer_outer * 9)) + (((int)threadIdx.x) % 9)))];
    if (((int)threadIdx.x) < 8) {
      kernel_shared[((((int)threadIdx.x) + 136))] = kernel[((((((((int)blockIdx.x) / 272) * 4608) + (((((int)threadIdx.x) + 136) / 9) * 288)) + (rc_outer_outer * 9)) + (((int)threadIdx.x) + 1)))];
    }
    __syncthreads();
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 34) * 2))] * kernel_shared[(((((int)threadIdx.x) / 34) * 36))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 1))] * kernel_shared[(((((int)threadIdx.x) / 34) * 36))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 70))] * kernel_shared[(((((int)threadIdx.x) / 34) * 36))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[(((((int)threadIdx.x) / 34) * 36))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 140))] * kernel_shared[(((((int)threadIdx.x) / 34) * 36))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[(((((int)threadIdx.x) / 34) * 36))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 210))] * kernel_shared[(((((int)threadIdx.x) / 34) * 36))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[(((((int)threadIdx.x) / 34) * 36))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 34) * 2))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 9))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 1))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 9))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 70))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 9))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 9))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 140))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 9))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 9))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 210))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 9))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 9))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((((int)threadIdx.x) % 34) * 2))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 18))]));
    compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 1))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 18))]));
    compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 70))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 18))]));
    compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 18))]));
    compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 140))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 18))]));
    compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 18))]));
    compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 210))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 18))]));
    compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 18))]));
    compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[(((((int)threadIdx.x) % 34) * 2))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 27))]));
    compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 1))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 27))]));
    compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 70))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 27))]));
    compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 27))]));
    compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 140))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 27))]));
    compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 27))]));
    compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 210))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 27))]));
    compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 27))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 70))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 3))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 3))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 140))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 3))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 3))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 210))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 3))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 3))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 280))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 3))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 3))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 70))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 12))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 12))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 140))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 12))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 12))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 210))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 12))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 12))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 280))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 12))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 12))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 70))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 21))]));
    compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 21))]));
    compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 140))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 21))]));
    compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 21))]));
    compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 210))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 21))]));
    compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 21))]));
    compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 280))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 21))]));
    compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 21))]));
    compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 70))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 30))]));
    compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 30))]));
    compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 140))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 30))]));
    compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 30))]));
    compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 210))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 30))]));
    compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 30))]));
    compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 280))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 30))]));
    compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 30))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 140))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 6))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 6))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 210))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 6))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 6))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 280))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 6))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 6))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 350))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 6))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 351))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 6))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 140))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 15))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 15))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 210))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 15))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 15))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 280))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 15))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 15))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 350))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 15))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 351))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 15))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 140))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 24))]));
    compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 24))]));
    compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 210))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 24))]));
    compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 24))]));
    compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 280))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 24))]));
    compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 24))]));
    compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 350))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 24))]));
    compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 351))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 24))]));
    compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 140))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 33))]));
    compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 33))]));
    compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 210))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 33))]));
    compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 33))]));
    compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 280))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 33))]));
    compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 33))]));
    compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 350))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 33))]));
    compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 351))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 33))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 1))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 1))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 2))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 1))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 1))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 1))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 1))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 1))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 1))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 1))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 1))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 10))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 2))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 10))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 10))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 10))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 10))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 10))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 10))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 10))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 1))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 19))]));
    compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 2))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 19))]));
    compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 19))]));
    compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 19))]));
    compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 19))]));
    compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 19))]));
    compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 19))]));
    compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 19))]));
    compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 1))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 28))]));
    compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 2))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 28))]));
    compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 28))]));
    compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 28))]));
    compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 28))]));
    compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 28))]));
    compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 28))]));
    compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 28))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 4))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 4))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 4))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 4))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 4))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 4))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 4))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 4))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 13))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 13))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 13))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 13))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 13))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 13))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 13))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 13))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 22))]));
    compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 22))]));
    compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 22))]));
    compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 22))]));
    compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 22))]));
    compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 22))]));
    compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 22))]));
    compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 22))]));
    compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 71))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 31))]));
    compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 31))]));
    compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 31))]));
    compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 31))]));
    compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 31))]));
    compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 31))]));
    compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 31))]));
    compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 31))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 7))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 7))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 7))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 7))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 7))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 7))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 351))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 7))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 352))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 7))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 16))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 16))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 16))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 16))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 16))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 16))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 351))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 16))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 352))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 16))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 25))]));
    compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 25))]));
    compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 25))]));
    compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 25))]));
    compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 25))]));
    compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 25))]));
    compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 351))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 25))]));
    compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 352))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 25))]));
    compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 141))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 34))]));
    compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 34))]));
    compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 34))]));
    compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 34))]));
    compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 281))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 34))]));
    compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 34))]));
    compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 351))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 34))]));
    compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 352))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 34))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 2))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 2))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 3))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 2))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 2))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 73))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 2))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 2))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 2))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 2))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 213))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 2))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 2))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 11))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 3))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 11))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 11))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 73))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 11))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 11))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 11))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 11))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 213))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 11))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 2))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 20))]));
    compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 3))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 20))]));
    compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 20))]));
    compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 73))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 20))]));
    compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 20))]));
    compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 20))]));
    compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 20))]));
    compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 213))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 20))]));
    compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 2))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 29))]));
    compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 3))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 29))]));
    compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 29))]));
    compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 73))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 29))]));
    compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 29))]));
    compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 29))]));
    compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 29))]));
    compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 213))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 29))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 5))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 73))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 5))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 5))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 5))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 5))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 213))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 5))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 5))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 283))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 5))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 14))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 73))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 14))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 14))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 14))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 14))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 213))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 14))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 14))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 283))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 14))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 23))]));
    compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 73))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 23))]));
    compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 23))]));
    compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 23))]));
    compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 23))]));
    compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 213))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 23))]));
    compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 23))]));
    compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 283))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 23))]));
    compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 72))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 32))]));
    compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 73))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 32))]));
    compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 32))]));
    compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 32))]));
    compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 32))]));
    compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 213))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 32))]));
    compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 32))]));
    compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 283))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 32))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 8))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 8))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 8))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 213))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 8))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 8))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 283))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 8))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 352))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 8))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 353))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 8))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 17))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 17))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 17))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 213))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 17))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 17))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 283))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 17))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 352))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 17))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 353))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 17))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 26))]));
    compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 26))]));
    compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 26))]));
    compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 213))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 26))]));
    compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 26))]));
    compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 283))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 26))]));
    compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 352))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 26))]));
    compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 353))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 26))]));
    compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 142))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 35))]));
    compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 35))]));
    compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 35))]));
    compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 213))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 35))]));
    compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 282))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 35))]));
    compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 283))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 35))]));
    compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 352))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 35))]));
    compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((((int)threadIdx.x) % 34) * 2) + 353))] * kernel_shared[((((((int)threadIdx.x) / 34) * 36) + 35))]));
  }
  for (int ff_inner = 0; ff_inner < 4; ++ff_inner) {
    for (int yy_inner = 0; yy_inner < 4; ++yy_inner) {
      for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
        compute[((((((((((((int)blockIdx.x) / 272) * 1183744) + ((((int)threadIdx.x) / 34) * 295936)) + (ff_inner * 73984)) + (((((int)blockIdx.x) % 272) >> 2) * 1088)) + (yy_inner * 272)) + ((((int)blockIdx.x) & 3) * 68)) + ((((int)threadIdx.x) % 34) * 2)) + xx_inner))] = compute_local[((((ff_inner * 8) + (yy_inner * 2)) + xx_inner))];
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
                    
dim3 size_grid(1088,1,1);

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
            