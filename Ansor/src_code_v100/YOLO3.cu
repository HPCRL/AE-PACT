
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[32];
  __shared__ float pad_temp_shared[4352];
  __shared__ float kernel_shared[2048];
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
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[(((int)threadIdx.x))] = data[(((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)))];
    pad_temp_shared[((((int)threadIdx.x) + 272))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 36992))];
    pad_temp_shared[((((int)threadIdx.x) + 544))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 73984))];
    pad_temp_shared[((((int)threadIdx.x) + 816))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 110976))];
    pad_temp_shared[((((int)threadIdx.x) + 1088))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 147968))];
    pad_temp_shared[((((int)threadIdx.x) + 1360))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 184960))];
    pad_temp_shared[((((int)threadIdx.x) + 1632))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 221952))];
    pad_temp_shared[((((int)threadIdx.x) + 1904))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 258944))];
    pad_temp_shared[((((int)threadIdx.x) + 2176))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 295936))];
    pad_temp_shared[((((int)threadIdx.x) + 2448))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 332928))];
    pad_temp_shared[((((int)threadIdx.x) + 2720))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 369920))];
    pad_temp_shared[((((int)threadIdx.x) + 2992))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 406912))];
    pad_temp_shared[((((int)threadIdx.x) + 3264))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 443904))];
    pad_temp_shared[((((int)threadIdx.x) + 3536))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 480896))];
    pad_temp_shared[((((int)threadIdx.x) + 3808))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 517888))];
    pad_temp_shared[((((int)threadIdx.x) + 4080))] = data[((((((((rc_outer_outer * 591872) + ((((int)threadIdx.x) / 136) * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (((((int)threadIdx.x) % 136) / 34) * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)) + 554880))];
    kernel_shared[((((int)threadIdx.x) * 2))] = kernel[(((((((int)threadIdx.x) >> 4) * 128) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 1))] = kernel[(((((((((int)threadIdx.x) * 2) + 1) >> 5) * 128) + (rc_outer_outer * 32)) + (((((int)threadIdx.x) * 2) + 1) & 31)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 544))] = kernel[((((((((int)threadIdx.x) >> 4) * 128) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 2176))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 545))] = kernel[((((((((((int)threadIdx.x) * 2) + 1) >> 5) * 128) + (rc_outer_outer * 32)) + (((((int)threadIdx.x) * 2) + 1) & 31)) + 2176))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 1088))] = kernel[((((((((int)threadIdx.x) >> 4) * 128) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 4352))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 1089))] = kernel[((((((((((int)threadIdx.x) * 2) + 1) >> 5) * 128) + (rc_outer_outer * 32)) + (((((int)threadIdx.x) * 2) + 1) & 31)) + 4352))];
    if (((int)threadIdx.x) < 208) {
      kernel_shared[(((((int)threadIdx.x) * 2) + 1632))] = kernel[((((((((int)threadIdx.x) >> 4) * 128) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 6528))];
    }
    if (((int)threadIdx.x) < 208) {
      kernel_shared[(((((int)threadIdx.x) * 2) + 1633))] = kernel[((((((((((int)threadIdx.x) * 2) + 1) >> 5) * 128) + (rc_outer_outer * 32)) + (((((int)threadIdx.x) * 2) + 1) & 31)) + 6528))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)))] * kernel_shared[((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 34))] * kernel_shared[((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 68))] * kernel_shared[((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 102))] * kernel_shared[((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 32))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 32))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 32))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 32))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 64))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 64))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 64))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 64))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 96))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 96))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 96))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 96))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 1))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 170))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 1))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 204))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 1))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 238))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 1))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 33))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 170))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 33))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 204))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 33))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 238))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 33))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 65))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 170))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 65))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 204))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 65))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 238))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 65))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 97))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 170))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 97))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 204))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 97))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 238))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 97))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 2))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 306))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 2))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 340))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 2))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 374))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 2))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 34))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 306))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 34))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 340))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 34))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 374))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 34))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 66))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 306))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 66))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 340))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 66))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 374))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 66))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 98))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 306))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 98))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 340))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 98))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 374))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 98))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 3))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 442))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 3))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 476))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 3))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 510))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 3))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 35))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 442))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 35))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 476))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 35))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 510))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 35))]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 67))]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 442))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 67))]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 476))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 67))]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 510))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 67))]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 99))]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 442))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 99))]));
      compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 476))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 99))]));
      compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 510))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 99))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 128))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 128))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 128))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 128))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[(((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 160))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 160))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 160))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 160))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[(((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 192))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 192))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 192))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 192))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[(((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 224))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 34))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 224))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 68))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 224))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 224))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 129))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 170))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 129))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 204))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 129))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 238))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 129))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 161))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 170))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 161))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 204))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 161))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 238))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 161))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 193))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 170))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 193))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 204))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 193))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 238))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 193))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 136))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 225))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 170))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 225))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 204))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 225))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 238))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 225))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 130))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 306))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 130))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 340))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 130))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 374))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 130))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 162))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 306))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 162))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 340))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 162))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 374))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 162))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 194))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 306))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 194))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 340))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 194))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 374))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 194))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 272))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 226))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 306))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 226))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 340))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 226))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 374))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 226))]));
      compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 131))]));
      compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 442))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 131))]));
      compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 476))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 131))]));
      compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 510))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 131))]));
      compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 163))]));
      compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 442))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 163))]));
      compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 476))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 163))]));
      compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 510))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 163))]));
      compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 195))]));
      compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 442))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 195))]));
      compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 476))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 195))]));
      compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 510))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 195))]));
      compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 408))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 227))]));
      compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 442))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 227))]));
      compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 476))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 227))]));
      compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared[((((rc_outer_inner * 544) + (((int)threadIdx.x) % 34)) + 510))] * kernel_shared[(((((((int)threadIdx.x) / 34) * 256) + (rc_outer_inner * 4)) + 227))]));
    }
  }
  for (int ff_inner = 0; ff_inner < 8; ++ff_inner) {
    for (int yy_inner = 0; yy_inner < 4; ++yy_inner) {
      compute[((((((((((int)threadIdx.x) / 34) * 147968) + (ff_inner * 18496)) + ((((int)blockIdx.x) >> 2) * 544)) + (yy_inner * 136)) + ((((int)blockIdx.x) & 3) * 34)) + (((int)threadIdx.x) % 34)))] = compute_local[(((ff_inner * 4) + yy_inner))];
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
            