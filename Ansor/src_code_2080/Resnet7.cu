
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[4];
  __shared__ float pad_temp_shared[1160];
  __shared__ float kernel_shared[2304];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[((((int)threadIdx.x) * 2))] = data[((((((rc_outer_outer * 7200) + (((((int)threadIdx.x) * 2) / 145) * 900)) + ((((int)blockIdx.x) % 7) * 120)) + ((((((int)threadIdx.x) * 2) % 145) / 29) * 30)) + ((((int)threadIdx.x) * 2) % 29)))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 1))] = data[((((((rc_outer_outer * 7200) + ((((((int)threadIdx.x) * 2) + 1) / 145) * 900)) + ((((int)blockIdx.x) % 7) * 120)) + (((((((int)threadIdx.x) * 2) + 1) % 145) / 29) * 30)) + (((((int)threadIdx.x) * 2) + 1) % 29)))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 448))] = data[((((((rc_outer_outer * 7200) + ((((((int)threadIdx.x) * 2) + 448) / 145) * 900)) + ((((int)blockIdx.x) % 7) * 120)) + (((((((int)threadIdx.x) * 2) + 13) % 145) / 29) * 30)) + (((((int)threadIdx.x) * 2) + 13) % 29)))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 449))] = data[((((((rc_outer_outer * 7200) + ((((((int)threadIdx.x) * 2) + 449) / 145) * 900)) + ((((int)blockIdx.x) % 7) * 120)) + (((((((int)threadIdx.x) * 2) + 14) % 145) / 29) * 30)) + (((((int)threadIdx.x) * 2) + 14) % 29)))];
    if (((int)threadIdx.x) < 132) {
      pad_temp_shared[(((((int)threadIdx.x) * 2) + 896))] = data[((((((rc_outer_outer * 7200) + ((((((int)threadIdx.x) * 2) + 896) / 145) * 900)) + ((((int)blockIdx.x) % 7) * 120)) + (((((((int)threadIdx.x) * 2) + 26) % 145) / 29) * 30)) + (((((int)threadIdx.x) * 2) + 26) % 29)))];
    }
    if (((int)threadIdx.x) < 132) {
      pad_temp_shared[(((((int)threadIdx.x) * 2) + 897))] = data[((((((rc_outer_outer * 7200) + ((((((int)threadIdx.x) * 2) + 897) / 145) * 900)) + ((((int)blockIdx.x) % 7) * 120)) + (((((((int)threadIdx.x) * 2) + 27) % 145) / 29) * 30)) + (((((int)threadIdx.x) * 2) + 27) % 29)))];
    }
    kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 36864) + ((((int)threadIdx.x) / 72) * 1152)) + (rc_outer_outer * 72)) + (((int)threadIdx.x) % 72)))];
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 36864) + (((((int)threadIdx.x) + 224) / 72) * 1152)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) + 8) % 72)))];
    kernel_shared[((((int)threadIdx.x) + 448))] = kernel[((((((((int)blockIdx.x) / 7) * 36864) + (((((int)threadIdx.x) + 448) / 72) * 1152)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) + 16) % 72)))];
    kernel_shared[((((int)threadIdx.x) + 672))] = kernel[((((((((int)blockIdx.x) / 7) * 36864) + (((((int)threadIdx.x) + 672) / 72) * 1152)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) + 24) % 72)))];
    kernel_shared[((((int)threadIdx.x) + 896))] = kernel[((((((((int)blockIdx.x) / 7) * 36864) + (((((int)threadIdx.x) + 896) / 72) * 1152)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) + 32) % 72)))];
    kernel_shared[((((int)threadIdx.x) + 1120))] = kernel[((((((((int)blockIdx.x) / 7) * 36864) + (((((int)threadIdx.x) + 1120) / 72) * 1152)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) + 40) % 72)))];
    kernel_shared[((((int)threadIdx.x) + 1344))] = kernel[((((((((int)blockIdx.x) / 7) * 36864) + (((((int)threadIdx.x) + 1344) / 72) * 1152)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) + 48) % 72)))];
    kernel_shared[((((int)threadIdx.x) + 1568))] = kernel[((((((((int)blockIdx.x) / 7) * 36864) + (((((int)threadIdx.x) + 1568) / 72) * 1152)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) + 56) % 72)))];
    kernel_shared[((((int)threadIdx.x) + 1792))] = kernel[((((((((int)blockIdx.x) / 7) * 36864) + (((((int)threadIdx.x) + 1792) / 72) * 1152)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) + 64) % 72)))];
    kernel_shared[((((int)threadIdx.x) + 2016))] = kernel[(((((((((int)blockIdx.x) / 7) * 36864) + ((((int)threadIdx.x) / 72) * 1152)) + (rc_outer_outer * 72)) + (((int)threadIdx.x) % 72)) + 32256))];
    if (((int)threadIdx.x) < 64) {
      kernel_shared[((((int)threadIdx.x) + 2240))] = kernel[((((((((int)blockIdx.x) / 7) * 36864) + (((((int)threadIdx.x) + 2240) / 72) * 1152)) + (rc_outer_outer * 72)) + (((int)threadIdx.x) + 8)))];
    }
    __syncthreads();
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)))] * kernel_shared[(((((int)threadIdx.x) / 14) * 144))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 2))] * kernel_shared[(((((int)threadIdx.x) / 14) * 144))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 72))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 2))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 72))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 1))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 3))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 1))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 73))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 3))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 73))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 2))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 2))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 4))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 2))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 2))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 74))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 4))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 74))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 29))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 3))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 31))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 3))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 29))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 75))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 31))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 75))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 30))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 4))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 32))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 4))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 30))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 76))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 32))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 76))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 31))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 5))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 33))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 5))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 31))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 77))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 33))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 77))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 58))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 6))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 60))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 6))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 58))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 78))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 60))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 78))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 59))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 7))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 61))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 7))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 59))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 79))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 61))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 79))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 60))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 8))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 62))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 8))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 60))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 80))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 62))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 80))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 145))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 9))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 147))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 9))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 145))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 81))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 147))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 81))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 146))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 10))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 148))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 10))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 146))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 82))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 148))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 82))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 147))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 11))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 149))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 11))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 147))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 83))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 149))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 83))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 174))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 12))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 176))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 12))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 174))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 84))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 176))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 84))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 175))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 13))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 177))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 13))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 175))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 85))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 177))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 85))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 176))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 14))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 178))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 14))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 176))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 86))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 178))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 86))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 203))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 15))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 205))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 15))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 203))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 87))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 205))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 87))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 204))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 16))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 206))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 16))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 204))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 88))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 206))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 88))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 205))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 17))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 207))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 17))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 205))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 89))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 207))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 89))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 290))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 18))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 292))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 18))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 290))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 90))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 292))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 90))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 291))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 19))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 293))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 19))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 291))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 91))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 293))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 91))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 292))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 20))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 294))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 20))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 292))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 92))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 294))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 92))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 319))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 21))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 321))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 21))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 319))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 93))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 321))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 93))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 320))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 22))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 322))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 22))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 320))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 94))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 322))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 94))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 321))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 23))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 323))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 23))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 321))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 95))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 323))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 95))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 348))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 24))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 350))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 24))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 348))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 96))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 350))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 96))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 349))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 25))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 351))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 25))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 349))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 97))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 351))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 97))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 350))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 26))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 352))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 26))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 350))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 98))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 352))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 98))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 435))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 27))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 437))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 27))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 435))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 99))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 437))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 99))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 436))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 28))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 438))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 28))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 436))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 100))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 438))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 100))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 437))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 29))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 439))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 29))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 437))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 101))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 439))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 101))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 464))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 30))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 466))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 30))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 464))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 102))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 466))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 102))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 465))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 31))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 467))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 31))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 465))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 103))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 467))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 103))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 466))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 32))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 468))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 32))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 466))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 104))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 468))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 104))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 493))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 33))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 495))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 33))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 493))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 105))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 495))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 105))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 494))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 34))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 496))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 34))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 494))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 106))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 496))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 106))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 495))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 35))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 497))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 35))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 495))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 107))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 497))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 107))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 580))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 36))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 582))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 36))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 580))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 108))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 582))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 108))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 581))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 37))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 583))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 37))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 581))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 109))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 583))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 109))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 582))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 38))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 584))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 38))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 582))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 110))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 584))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 110))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 609))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 39))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 611))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 39))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 609))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 111))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 611))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 111))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 610))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 40))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 612))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 40))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 610))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 112))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 612))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 112))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 611))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 41))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 613))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 41))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 611))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 113))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 613))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 113))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 638))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 42))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 640))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 42))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 638))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 114))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 640))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 114))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 639))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 43))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 641))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 43))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 639))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 115))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 641))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 115))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 640))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 44))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 642))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 44))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 640))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 116))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 642))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 116))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 725))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 45))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 727))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 45))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 725))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 117))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 727))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 117))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 726))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 46))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 728))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 46))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 726))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 118))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 728))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 118))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 727))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 47))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 729))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 47))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 727))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 119))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 729))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 119))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 754))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 48))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 756))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 48))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 754))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 120))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 756))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 120))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 755))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 49))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 757))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 49))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 755))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 121))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 757))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 121))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 756))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 50))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 758))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 50))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 756))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 122))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 758))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 122))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 783))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 51))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 785))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 51))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 783))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 123))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 785))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 123))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 784))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 52))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 786))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 52))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 784))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 124))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 786))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 124))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 785))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 53))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 787))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 53))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 785))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 125))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 787))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 125))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 870))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 54))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 872))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 54))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 870))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 126))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 872))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 126))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 871))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 55))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 873))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 55))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 871))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 127))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 873))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 127))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 872))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 56))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 874))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 56))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 872))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 128))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 874))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 128))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 899))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 57))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 901))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 57))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 899))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 129))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 901))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 129))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 900))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 58))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 902))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 58))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 900))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 130))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 902))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 130))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 901))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 59))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 903))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 59))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 901))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 131))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 903))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 131))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 928))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 60))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 930))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 60))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 928))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 132))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 930))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 132))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 929))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 61))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 931))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 61))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 929))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 133))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 931))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 133))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 930))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 62))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 932))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 62))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 930))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 134))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 932))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 134))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1015))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 63))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1017))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 63))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1015))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 135))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1017))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 135))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1016))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 64))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1018))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 64))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1016))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 136))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1018))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 136))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1017))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 65))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1019))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 65))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1017))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 137))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1019))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 137))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1044))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 66))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1046))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 66))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1044))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 138))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1046))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 138))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1045))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 67))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1047))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 67))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1045))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 139))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1047))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 139))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1046))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 68))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1048))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 68))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1046))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 140))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1048))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 140))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1073))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 69))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1075))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 69))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1073))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 141))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1075))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 141))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1074))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 70))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1076))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 70))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1074))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 142))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1076))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 142))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1075))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 71))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1077))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 71))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1075))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 143))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((((((int)threadIdx.x) % 14) / 7) * 58) + ((((int)threadIdx.x) % 7) * 4)) + 1077))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + 143))]));
  }
  for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
    for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
      compute[((((((((((int)blockIdx.x) / 7) * 6272) + ((((int)threadIdx.x) / 14) * 392)) + (ff_inner * 196)) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) % 14) * 2)) + xx_inner))] = compute_local[(((ff_inner * 2) + xx_inner))];
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
                    
dim3 size_grid(56,1,1);

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
            