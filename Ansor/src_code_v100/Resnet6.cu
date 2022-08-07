
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[8];
  __shared__ float pad_temp_shared[1536];
  __shared__ float kernel_shared[2304];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[((((int)threadIdx.x) * 3))] = data[(((((((rc_outer_outer * 14400) + ((((int)threadIdx.x) >> 5) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + (((((int)threadIdx.x) & 31) >> 1) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + ((((int)threadIdx.x) & 1) * 3)))];
    pad_temp_shared[(((((int)threadIdx.x) * 3) + 1))] = data[(((((((rc_outer_outer * 14400) + ((((((int)threadIdx.x) * 3) + 1) / 96) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + (((((((int)threadIdx.x) * 3) + 1) % 96) / 6) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + (((((int)threadIdx.x) * 3) + 1) % 6)))];
    pad_temp_shared[(((((int)threadIdx.x) * 3) + 2))] = data[(((((((rc_outer_outer * 14400) + ((((((int)threadIdx.x) * 3) + 2) / 96) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + (((((((int)threadIdx.x) * 3) + 2) % 96) / 6) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + (((((int)threadIdx.x) * 3) + 2) % 6)))];
    pad_temp_shared[(((((((((int)threadIdx.x) * 3) + 336) / 96) * 96) + ((((((int)threadIdx.x) >> 1) + 8) & 15) * 6)) + ((((int)threadIdx.x) & 1) * 3)))] = data[(((((((rc_outer_outer * 14400) + ((((((int)threadIdx.x) * 3) + 336) / 96) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + ((((((int)threadIdx.x) >> 1) + 8) & 15) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + ((((int)threadIdx.x) & 1) * 3)))];
    pad_temp_shared[(((((((((int)threadIdx.x) * 3) + 337) / 96) * 96) + ((((((((int)threadIdx.x) * 3) + 1) / 6) + 8) & 15) * 6)) + (((((int)threadIdx.x) * 3) + 1) % 6)))] = data[(((((((rc_outer_outer * 14400) + ((((((int)threadIdx.x) * 3) + 337) / 96) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + ((((((((int)threadIdx.x) * 3) + 1) / 6) + 8) & 15) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + (((((int)threadIdx.x) * 3) + 1) % 6)))];
    pad_temp_shared[(((((((((int)threadIdx.x) * 3) + 338) / 96) * 96) + ((((((((int)threadIdx.x) * 3) + 2) / 6) + 8) & 15) * 6)) + (((((int)threadIdx.x) * 3) + 2) % 6)))] = data[(((((((rc_outer_outer * 14400) + ((((((int)threadIdx.x) * 3) + 338) / 96) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + ((((((((int)threadIdx.x) * 3) + 2) / 6) + 8) & 15) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + (((((int)threadIdx.x) * 3) + 2) % 6)))];
    pad_temp_shared[(((((int)threadIdx.x) * 3) + 672))] = data[((((((((rc_outer_outer * 14400) + ((((int)threadIdx.x) >> 5) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + (((((int)threadIdx.x) & 31) >> 1) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + ((((int)threadIdx.x) & 1) * 3)) + 6300))];
    pad_temp_shared[((((((((int)threadIdx.x) * 3) + 673) / 96) * 96) + (((((int)threadIdx.x) * 3) + 1) % 96)))] = data[(((((((rc_outer_outer * 14400) + ((((((int)threadIdx.x) * 3) + 673) / 96) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + (((((((int)threadIdx.x) * 3) + 1) % 96) / 6) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + (((((int)threadIdx.x) * 3) + 1) % 6)))];
    pad_temp_shared[((((((((int)threadIdx.x) * 3) + 674) / 96) * 96) + (((((int)threadIdx.x) * 3) + 2) % 96)))] = data[(((((((rc_outer_outer * 14400) + ((((((int)threadIdx.x) * 3) + 674) / 96) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + (((((((int)threadIdx.x) * 3) + 2) % 96) / 6) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + (((((int)threadIdx.x) * 3) + 2) % 6)))];
    pad_temp_shared[(((((((((int)threadIdx.x) * 3) + 1008) / 96) * 96) + ((((((int)threadIdx.x) >> 1) + 8) & 15) * 6)) + ((((int)threadIdx.x) & 1) * 3)))] = data[(((((((rc_outer_outer * 14400) + ((((((int)threadIdx.x) * 3) + 1008) / 96) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + ((((((int)threadIdx.x) >> 1) + 8) & 15) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + ((((int)threadIdx.x) & 1) * 3)))];
    pad_temp_shared[(((((((((int)threadIdx.x) * 3) + 1009) / 96) * 96) + ((((((((int)threadIdx.x) * 3) + 1) / 6) + 8) & 15) * 6)) + (((((int)threadIdx.x) * 3) + 1) % 6)))] = data[(((((((rc_outer_outer * 14400) + ((((((int)threadIdx.x) * 3) + 1009) / 96) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + ((((((((int)threadIdx.x) * 3) + 1) / 6) + 8) & 15) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + (((((int)threadIdx.x) * 3) + 1) % 6)))];
    pad_temp_shared[(((((((((int)threadIdx.x) * 3) + 1010) / 96) * 96) + ((((((((int)threadIdx.x) * 3) + 2) / 6) + 8) & 15) * 6)) + (((((int)threadIdx.x) * 3) + 2) % 6)))] = data[(((((((rc_outer_outer * 14400) + ((((((int)threadIdx.x) * 3) + 1010) / 96) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + ((((((((int)threadIdx.x) * 3) + 2) / 6) + 8) & 15) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + (((((int)threadIdx.x) * 3) + 2) % 6)))];
    if (((int)threadIdx.x) < 64) {
      pad_temp_shared[(((((int)threadIdx.x) * 3) + 1344))] = data[((((((((rc_outer_outer * 14400) + ((((int)threadIdx.x) >> 5) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + (((((int)threadIdx.x) & 31) >> 1) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + ((((int)threadIdx.x) & 1) * 3)) + 12600))];
    }
    if (((int)threadIdx.x) < 64) {
      pad_temp_shared[((((((((int)threadIdx.x) * 3) + 1345) / 96) * 96) + (((((int)threadIdx.x) * 3) + 1) % 96)))] = data[(((((((rc_outer_outer * 14400) + ((((((int)threadIdx.x) * 3) + 1345) / 96) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + (((((((int)threadIdx.x) * 3) + 1) % 96) / 6) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + (((((int)threadIdx.x) * 3) + 1) % 6)))];
    }
    if (((int)threadIdx.x) < 64) {
      pad_temp_shared[((((((((int)threadIdx.x) * 3) + 1346) / 96) * 96) + (((((int)threadIdx.x) * 3) + 2) % 96)))] = data[(((((((rc_outer_outer * 14400) + ((((((int)threadIdx.x) * 3) + 1346) / 96) * 900)) + (((((int)blockIdx.x) % 14) / 7) * 420)) + (((((((int)threadIdx.x) * 3) + 2) % 96) / 6) * 30)) + ((((int)blockIdx.x) % 7) * 4)) + (((((int)threadIdx.x) * 3) + 2) % 6)))];
    }
    kernel_shared[((((int)threadIdx.x) * 2))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((int)threadIdx.x) / 72) * 1152)) + (rc_outer_outer * 144)) + ((((int)threadIdx.x) % 72) * 2)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 1))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 1) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 1) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 224))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 224) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 80) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 225))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 225) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 81) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 448))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 448) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 16) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 449))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 449) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 17) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 672))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 672) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 96) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 673))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 673) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 97) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 896))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 896) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 32) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 897))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 897) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 33) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 1120))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 1120) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 112) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 1121))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 1121) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 113) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 1344))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 1344) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 48) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 1345))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 1345) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 49) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 1568))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 1568) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 128) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 1569))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 1569) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 129) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 1792))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 1792) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 64) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 1793))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 1793) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 65) % 144)))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 2016))] = kernel[(((((((((int)blockIdx.x) / 14) * 18432) + ((((int)threadIdx.x) / 72) * 1152)) + (rc_outer_outer * 144)) + ((((int)threadIdx.x) % 72) * 2)) + 16128))];
    kernel_shared[(((((int)threadIdx.x) * 2) + 2017))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 2017) / 144) * 1152)) + (rc_outer_outer * 144)) + (((((int)threadIdx.x) * 2) + 1) % 144)))];
    if (((int)threadIdx.x) < 32) {
      kernel_shared[(((((int)threadIdx.x) * 2) + 2240))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 2240) / 144) * 1152)) + (rc_outer_outer * 144)) + ((((int)threadIdx.x) * 2) + 80)))];
    }
    if (((int)threadIdx.x) < 32) {
      kernel_shared[(((((int)threadIdx.x) * 2) + 2241))] = kernel[((((((((int)blockIdx.x) / 14) * 18432) + ((((((int)threadIdx.x) * 2) + 2241) / 144) * 1152)) + (rc_outer_outer * 144)) + ((((int)threadIdx.x) * 2) + 81)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 2))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1152))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1152))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 1))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 3))] * kernel_shared[((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1152))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 3))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1152))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 6))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 3))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 8))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 3))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 6))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1155))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 8))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1155))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 7))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 3))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 9))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 3))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 7))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1155))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 9))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1155))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 12))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 6))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 14))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 6))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 12))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1158))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 14))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1158))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 13))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 6))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 15))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 6))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 13))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1158))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 15))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1158))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 96))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 9))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 98))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 9))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 96))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1161))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 98))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1161))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 97))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 9))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 99))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 9))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 97))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1161))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 99))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1161))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 12))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 104))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 12))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 102))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1164))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 104))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1164))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 103))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 12))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 105))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 12))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 103))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1164))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 105))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1164))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 108))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 15))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 15))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 108))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1167))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1167))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 109))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 15))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 111))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 15))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 109))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1167))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 111))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1167))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 3))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1153))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 3))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1153))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 4))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1153))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 4))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1153))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 7))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 4))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 9))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 4))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 7))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1156))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 9))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1156))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 8))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 4))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 10))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 4))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 8))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1156))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 10))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1156))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 13))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 7))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 15))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 7))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 13))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1159))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 15))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1159))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 14))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 7))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 16))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 7))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 14))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1159))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 16))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1159))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 97))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 10))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 99))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 10))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 97))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1162))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 99))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1162))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 98))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 10))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 100))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 10))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 98))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1162))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 100))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1162))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 103))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 13))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 105))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 13))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 103))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1165))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 105))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1165))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 104))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 13))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 106))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 13))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 104))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1165))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 106))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1165))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 109))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 16))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 111))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 16))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 109))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1168))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 111))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1168))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 16))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 112))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 16))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1168))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 112))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1168))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 2))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 4))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 2))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1154))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 4))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1154))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 3))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 2))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 5))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 2))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 3))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1154))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 5))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1154))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 8))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 5))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 10))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 5))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 8))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1157))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 10))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1157))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 9))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 5))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 11))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 5))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 9))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1157))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 11))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1157))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 14))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 8))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 16))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 8))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 14))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1160))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 16))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1160))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 15))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 8))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 17))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 8))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 15))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1160))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 17))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1160))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 98))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 11))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 100))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 11))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 98))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1163))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 100))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1163))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 99))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 11))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 101))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 11))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 99))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1163))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 101))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1163))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 104))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 14))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 106))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 14))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 104))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1166))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 106))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1166))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 105))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 14))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 107))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 14))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 105))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1166))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 107))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1166))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 17))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 112))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 17))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1169))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 112))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1169))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 111))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 17))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 113))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 17))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 111))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1169))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 192) + ((((int)threadIdx.x) % 14) * 6)) + 113))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 144) + (rc_outer_inner * 18)) + 1169))]));
    }
  }
  for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
    compute[((((((((((int)blockIdx.x) / 14) * 12544) + ((((int)threadIdx.x) / 14) * 784)) + (((((int)blockIdx.x) % 14) / 7) * 392)) + ((((int)threadIdx.x) % 14) * 28)) + ((((int)blockIdx.x) % 7) * 4)) + xx_inner))] = compute_local[(xx_inner)];
    compute[(((((((((((int)blockIdx.x) / 14) * 12544) + ((((int)threadIdx.x) / 14) * 784)) + (((((int)blockIdx.x) % 14) / 7) * 392)) + ((((int)threadIdx.x) % 14) * 28)) + ((((int)blockIdx.x) % 7) * 4)) + xx_inner) + 2))] = compute_local[((xx_inner + 2))];
    compute[(((((((((((int)blockIdx.x) / 14) * 12544) + ((((int)threadIdx.x) / 14) * 784)) + (((((int)blockIdx.x) % 14) / 7) * 392)) + ((((int)threadIdx.x) % 14) * 28)) + ((((int)blockIdx.x) % 7) * 4)) + xx_inner) + 6272))] = compute_local[((xx_inner + 4))];
    compute[(((((((((((int)blockIdx.x) / 14) * 12544) + ((((int)threadIdx.x) / 14) * 784)) + (((((int)blockIdx.x) % 14) / 7) * 392)) + ((((int)threadIdx.x) % 14) * 28)) + ((((int)blockIdx.x) % 7) * 4)) + xx_inner) + 6274))] = compute_local[((xx_inner + 6))];
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

dim3 size_block(112,1,1);
 
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
            