
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[18];
  __shared__ float pad_temp_shared[1280];
  __shared__ float kernel_shared[1152];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(9)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(10)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(11)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(12)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(13)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(14)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(15)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  compute_local[(16)] = 0.000000e+00f;
  compute_local[(8)] = 0.000000e+00f;
  compute_local[(17)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[(((int)threadIdx.x))] = data[((((((rc_outer_outer * 96800) + (((((int)blockIdx.x) % 108) / 6) * 660)) + ((((int)threadIdx.x) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + (((int)threadIdx.x) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 96))] = data[(((((((rc_outer_outer * 96800) + (((((int)threadIdx.x) + 96) / 160) * 12100)) + (((((int)blockIdx.x) % 108) / 6) * 660)) + ((((((int)threadIdx.x) + 96) % 160) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + ((((int)threadIdx.x) + 16) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 192))] = data[(((((((rc_outer_outer * 96800) + (((((int)threadIdx.x) + 192) / 160) * 12100)) + (((((int)blockIdx.x) % 108) / 6) * 660)) + (((((int)threadIdx.x) + 32) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + ((((int)threadIdx.x) + 12) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 288))] = data[(((((((rc_outer_outer * 96800) + (((((int)threadIdx.x) + 288) / 160) * 12100)) + (((((int)blockIdx.x) % 108) / 6) * 660)) + ((((((int)threadIdx.x) + 128) % 160) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + ((((int)threadIdx.x) + 8) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 384))] = data[(((((((rc_outer_outer * 96800) + (((((int)threadIdx.x) + 384) / 160) * 12100)) + (((((int)blockIdx.x) % 108) / 6) * 660)) + (((((int)threadIdx.x) + 64) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + ((((int)threadIdx.x) + 4) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 480))] = data[(((((((rc_outer_outer * 96800) + (((((int)blockIdx.x) % 108) / 6) * 660)) + ((((int)threadIdx.x) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + (((int)threadIdx.x) % 20)) + 36300))];
    pad_temp_shared[((((int)threadIdx.x) + 576))] = data[(((((((rc_outer_outer * 96800) + (((((int)threadIdx.x) + 576) / 160) * 12100)) + (((((int)blockIdx.x) % 108) / 6) * 660)) + ((((((int)threadIdx.x) + 96) % 160) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + ((((int)threadIdx.x) + 16) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 672))] = data[(((((((rc_outer_outer * 96800) + (((((int)threadIdx.x) + 672) / 160) * 12100)) + (((((int)blockIdx.x) % 108) / 6) * 660)) + (((((int)threadIdx.x) + 32) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + ((((int)threadIdx.x) + 12) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 768))] = data[(((((((rc_outer_outer * 96800) + (((((int)threadIdx.x) + 768) / 160) * 12100)) + (((((int)blockIdx.x) % 108) / 6) * 660)) + ((((((int)threadIdx.x) + 128) % 160) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + ((((int)threadIdx.x) + 8) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 864))] = data[(((((((rc_outer_outer * 96800) + (((((int)threadIdx.x) + 864) / 160) * 12100)) + (((((int)blockIdx.x) % 108) / 6) * 660)) + (((((int)threadIdx.x) + 64) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + ((((int)threadIdx.x) + 4) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 960))] = data[(((((((rc_outer_outer * 96800) + (((((int)blockIdx.x) % 108) / 6) * 660)) + ((((int)threadIdx.x) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + (((int)threadIdx.x) % 20)) + 72600))];
    pad_temp_shared[((((int)threadIdx.x) + 1056))] = data[(((((((rc_outer_outer * 96800) + (((((int)threadIdx.x) + 1056) / 160) * 12100)) + (((((int)blockIdx.x) % 108) / 6) * 660)) + ((((((int)threadIdx.x) + 96) % 160) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + ((((int)threadIdx.x) + 16) % 20)))];
    pad_temp_shared[((((int)threadIdx.x) + 1152))] = data[(((((((rc_outer_outer * 96800) + (((((int)threadIdx.x) + 1152) / 160) * 12100)) + (((((int)blockIdx.x) % 108) / 6) * 660)) + (((((int)threadIdx.x) + 32) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + ((((int)threadIdx.x) + 12) % 20)))];
    if (((int)threadIdx.x) < 32) {
      pad_temp_shared[((((int)threadIdx.x) + 1248))] = data[(((((((rc_outer_outer * 96800) + (((((int)threadIdx.x) + 1248) / 160) * 12100)) + (((((int)blockIdx.x) % 108) / 6) * 660)) + (((((int)threadIdx.x) + 128) / 20) * 110)) + ((((int)blockIdx.x) % 6) * 18)) + ((((int)threadIdx.x) + 8) % 20)))];
    }
      ((float3*)(kernel_shared + ((((int)threadIdx.x) * 3))))[0] = ((float3*)(kernel + ((((((((int)blockIdx.x) / 108) * 4608) + ((((int)threadIdx.x) / 24) * 288)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 24) * 3)))))[0];
      ((float3*)(kernel_shared + (((((int)threadIdx.x) * 3) + 288))))[0] = ((float3*)(kernel + (((((((((int)blockIdx.x) / 108) * 4608) + ((((int)threadIdx.x) / 24) * 288)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 24) * 3)) + 1152))))[0];
      ((float3*)(kernel_shared + (((((int)threadIdx.x) * 3) + 576))))[0] = ((float3*)(kernel + (((((((((int)blockIdx.x) / 108) * 4608) + ((((int)threadIdx.x) / 24) * 288)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 24) * 3)) + 2304))))[0];
      ((float3*)(kernel_shared + (((((int)threadIdx.x) * 3) + 864))))[0] = ((float3*)(kernel + (((((((((int)blockIdx.x) / 108) * 4608) + ((((int)threadIdx.x) / 24) * 288)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 24) * 3)) + 3456))))[0];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      for (int ry_outer_inner = 0; ry_outer_inner < 3; ++ry_outer_inner) {
        for (int rx_outer_inner = 0; rx_outer_inner < 3; ++rx_outer_inner) {
          compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner))] * kernel_shared[((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner))]));
          compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 576))]));
          compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 160))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 9))]));
          compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 160))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 585))]));
          compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 1))] * kernel_shared[((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner))]));
          compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 1))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 576))]));
          compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 161))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 9))]));
          compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 161))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 585))]));
          compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 2))] * kernel_shared[((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner))]));
          compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 2))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 576))]));
          compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 162))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 9))]));
          compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 162))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 585))]));
          compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 20))] * kernel_shared[((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner))]));
          compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 20))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 576))]));
          compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 180))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 9))]));
          compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 180))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 585))]));
          compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 21))] * kernel_shared[((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner))]));
          compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 21))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 576))]));
          compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 181))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 9))]));
          compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 181))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 585))]));
          compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 22))] * kernel_shared[((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner))]));
          compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 22))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 576))]));
          compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 182))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 9))]));
          compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 182))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 585))]));
          compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 40))] * kernel_shared[((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner))]));
          compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 40))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 576))]));
          compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 200))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 9))]));
          compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 200))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 585))]));
          compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 41))] * kernel_shared[((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner))]));
          compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 41))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 576))]));
          compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 201))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 9))]));
          compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 201))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 585))]));
          compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 42))] * kernel_shared[((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner))]));
          compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 42))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 576))]));
          compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 202))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 9))]));
          compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared[(((((((rc_outer_inner * 320) + (((((int)threadIdx.x) % 12) / 6) * 60)) + (ry_outer_inner * 20)) + ((((int)threadIdx.x) % 6) * 3)) + rx_outer_inner) + 202))] * kernel_shared[(((((((((int)threadIdx.x) / 12) * 72) + (rc_outer_inner * 18)) + (ry_outer_inner * 3)) + rx_outer_inner) + 585))]));
        }
      }
    }
  }
  for (int yy_inner = 0; yy_inner < 3; ++yy_inner) {
    for (int xx_inner = 0; xx_inner < 3; ++xx_inner) {
      compute[((((((((((((int)blockIdx.x) / 108) * 186624) + ((((int)threadIdx.x) / 12) * 11664)) + (((((int)blockIdx.x) % 108) / 6) * 648)) + (((((int)threadIdx.x) % 12) / 6) * 324)) + (yy_inner * 108)) + ((((int)blockIdx.x) % 6) * 18)) + ((((int)threadIdx.x) % 6) * 3)) + xx_inner))] = compute_local[(((yy_inner * 3) + xx_inner))];
      compute[(((((((((((((int)blockIdx.x) / 108) * 186624) + ((((int)threadIdx.x) / 12) * 11664)) + (((((int)blockIdx.x) % 108) / 6) * 648)) + (((((int)threadIdx.x) % 12) / 6) * 324)) + (yy_inner * 108)) + ((((int)blockIdx.x) % 6) * 18)) + ((((int)threadIdx.x) % 6) * 3)) + xx_inner) + 93312))] = compute_local[((((yy_inner * 3) + xx_inner) + 9))];
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
                    
dim3 size_grid(216,1,1);

dim3 size_block(96,1,1);
 
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
            