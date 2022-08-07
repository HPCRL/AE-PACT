
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[16];
  __shared__ float pad_temp_shared[3520];
  __shared__ float kernel_shared[4096];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(8)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(9)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(10)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(11)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(12)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(13)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(14)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  compute_local[(15)] = 0.000000e+00f;
  pad_temp_shared[(((int)threadIdx.x))] = data[(((((((int)threadIdx.x) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + (((int)threadIdx.x) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 112))] = data[((((((((int)threadIdx.x) + 112) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 2) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 224))] = data[((((((((int)threadIdx.x) + 224) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 4) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 336))] = data[((((((((int)threadIdx.x) + 336) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 6) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 448))] = data[((((((((int)threadIdx.x) + 448) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 8) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 560))] = data[((((((((int)threadIdx.x) + 560) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 10) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 672))] = data[((((((((int)threadIdx.x) + 672) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 12) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 784))] = data[((((((((int)threadIdx.x) + 784) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 14) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 896))] = data[((((((((int)threadIdx.x) + 896) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 16) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 1008))] = data[((((((((int)threadIdx.x) + 1008) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 18) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 1120))] = data[((((((((int)threadIdx.x) + 1120) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 20) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 1232))] = data[((((((((int)threadIdx.x) + 1232) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 22) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 1344))] = data[((((((((int)threadIdx.x) + 1344) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 24) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 1456))] = data[((((((((int)threadIdx.x) + 1456) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 26) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 1568))] = data[((((((((int)threadIdx.x) + 1568) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 28) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 1680))] = data[((((((((int)threadIdx.x) + 1680) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 30) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 1792))] = data[((((((((int)threadIdx.x) + 1792) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 32) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 1904))] = data[((((((((int)threadIdx.x) + 1904) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 34) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 2016))] = data[((((((((int)threadIdx.x) + 2016) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 36) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 2128))] = data[((((((((int)threadIdx.x) + 2128) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 38) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 2240))] = data[((((((((int)threadIdx.x) + 2240) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 40) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 2352))] = data[((((((((int)threadIdx.x) + 2352) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 42) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 2464))] = data[((((((((int)threadIdx.x) + 2464) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 44) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 2576))] = data[((((((((int)threadIdx.x) + 2576) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 46) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 2688))] = data[((((((((int)threadIdx.x) + 2688) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 48) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 2800))] = data[((((((((int)threadIdx.x) + 2800) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 50) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 2912))] = data[((((((((int)threadIdx.x) + 2912) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 52) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 3024))] = data[((((((((int)threadIdx.x) + 3024) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 54) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 3136))] = data[((((((((int)threadIdx.x) + 3136) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 1) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 3248))] = data[((((((((int)threadIdx.x) + 3248) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 3) % 55)))];
  pad_temp_shared[((((int)threadIdx.x) + 3360))] = data[((((((((int)threadIdx.x) + 3360) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + ((((int)threadIdx.x) + 5) % 55)))];
  if (((int)threadIdx.x) < 48) {
    pad_temp_shared[((((int)threadIdx.x) + 3472))] = data[((((((((int)threadIdx.x) + 3472) / 55) * 3136) + ((((int)blockIdx.x) % 28) * 112)) + (((int)threadIdx.x) + 7)))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 112))];
  kernel_shared[((((int)threadIdx.x) + 224))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 224))];
  kernel_shared[((((int)threadIdx.x) + 336))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 336))];
  kernel_shared[((((int)threadIdx.x) + 448))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 448))];
  kernel_shared[((((int)threadIdx.x) + 560))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 560))];
  kernel_shared[((((int)threadIdx.x) + 672))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 672))];
  kernel_shared[((((int)threadIdx.x) + 784))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 784))];
  kernel_shared[((((int)threadIdx.x) + 896))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 896))];
  kernel_shared[((((int)threadIdx.x) + 1008))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 1008))];
  kernel_shared[((((int)threadIdx.x) + 1120))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 1120))];
  kernel_shared[((((int)threadIdx.x) + 1232))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 1232))];
  kernel_shared[((((int)threadIdx.x) + 1344))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 1344))];
  kernel_shared[((((int)threadIdx.x) + 1456))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 1456))];
  kernel_shared[((((int)threadIdx.x) + 1568))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 1568))];
  kernel_shared[((((int)threadIdx.x) + 1680))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 1680))];
  kernel_shared[((((int)threadIdx.x) + 1792))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 1792))];
  kernel_shared[((((int)threadIdx.x) + 1904))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 1904))];
  kernel_shared[((((int)threadIdx.x) + 2016))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 2016))];
  kernel_shared[((((int)threadIdx.x) + 2128))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 2128))];
  kernel_shared[((((int)threadIdx.x) + 2240))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 2240))];
  kernel_shared[((((int)threadIdx.x) + 2352))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 2352))];
  kernel_shared[((((int)threadIdx.x) + 2464))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 2464))];
  kernel_shared[((((int)threadIdx.x) + 2576))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 2576))];
  kernel_shared[((((int)threadIdx.x) + 2688))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 2688))];
  kernel_shared[((((int)threadIdx.x) + 2800))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 2800))];
  kernel_shared[((((int)threadIdx.x) + 2912))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 2912))];
  kernel_shared[((((int)threadIdx.x) + 3024))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 3024))];
  kernel_shared[((((int)threadIdx.x) + 3136))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 3136))];
  kernel_shared[((((int)threadIdx.x) + 3248))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 3248))];
  kernel_shared[((((int)threadIdx.x) + 3360))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 3360))];
  kernel_shared[((((int)threadIdx.x) + 3472))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 3472))];
  kernel_shared[((((int)threadIdx.x) + 3584))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 3584))];
  kernel_shared[((((int)threadIdx.x) + 3696))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 3696))];
  kernel_shared[((((int)threadIdx.x) + 3808))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 3808))];
  kernel_shared[((((int)threadIdx.x) + 3920))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 3920))];
  if (((int)threadIdx.x) < 64) {
    kernel_shared[((((int)threadIdx.x) + 4032))] = kernel[(((((((int)blockIdx.x) / 28) * 4096) + ((int)threadIdx.x)) + 4032))];
  }
  __syncthreads();
  for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)))] * kernel_shared[((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 28))] * kernel_shared[((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 64))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 28))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 64))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 55))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 1))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 83))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 1))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 55))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 65))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 83))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 65))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 2))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 138))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 2))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 66))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 138))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 66))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 165))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 3))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 193))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 3))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 165))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 67))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 193))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 67))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 220))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 4))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 248))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 4))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 220))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 68))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 248))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 68))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 275))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 5))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 303))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 5))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 275))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 69))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 303))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 69))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 330))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 6))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 358))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 6))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 330))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 70))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 358))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 70))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 385))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 7))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 413))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 7))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 385))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 71))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 413))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 71))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 128))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 28))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 128))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 192))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 28))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 192))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 55))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 129))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 83))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 129))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 55))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 193))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 83))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 193))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 130))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 138))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 130))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 194))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 138))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 194))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 165))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 131))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 193))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 131))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 165))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 195))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 193))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 195))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 220))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 132))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 248))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 132))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 220))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 196))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 248))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 196))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 275))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 133))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 303))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 133))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 275))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 197))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 303))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 197))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 330))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 134))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 358))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 134))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 330))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 198))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 358))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 198))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 385))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 135))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 413))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 135))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 385))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 199))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 413))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 199))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 256))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 28))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 256))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 320))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 28))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 320))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 55))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 257))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 83))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 257))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 55))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 321))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 83))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 321))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 258))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 138))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 258))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 322))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 138))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 322))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 165))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 259))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 193))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 259))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 165))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 323))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 193))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 323))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 220))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 260))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 248))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 260))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 220))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 324))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 248))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 324))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 275))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 261))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 303))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 261))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 275))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 325))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 303))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 325))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 330))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 262))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 358))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 262))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 330))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 326))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 358))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 326))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 385))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 263))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 413))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 263))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 385))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 327))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 413))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 327))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 384))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 28))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 384))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 448))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 28))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 448))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 55))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 385))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 83))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 385))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 55))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 449))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 83))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 449))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 386))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 138))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 386))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 110))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 450))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 138))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 450))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 165))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 387))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 193))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 387))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 165))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 451))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 193))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 451))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 220))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 388))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 248))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 388))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 220))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 452))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 248))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 452))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 275))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 389))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 303))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 389))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 275))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 453))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 303))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 453))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 330))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 390))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 358))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 390))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 330))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 454))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 358))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 454))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 385))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 391))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 413))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 391))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 385))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 455))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[((((rc_outer_inner * 440) + ((((int)threadIdx.x) % 14) * 2)) + 413))] * kernel_shared[(((((((int)threadIdx.x) / 14) * 512) + (rc_outer_inner * 8)) + 455))]));
  }
  for (int ff_inner = 0; ff_inner < 8; ++ff_inner) {
    compute[(((((((((int)blockIdx.x) / 28) * 50176) + ((((int)threadIdx.x) / 14) * 6272)) + (ff_inner * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)))] = compute_local[(ff_inner)];
    compute[((((((((((int)blockIdx.x) / 28) * 50176) + ((((int)threadIdx.x) / 14) * 6272)) + (ff_inner * 784)) + ((((int)blockIdx.x) % 28) * 28)) + (((int)threadIdx.x) % 14)) + 14))] = compute_local[((ff_inner + 8))];
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
            