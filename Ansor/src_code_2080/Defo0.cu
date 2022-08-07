
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[16];
  __shared__ float pad_temp_shared[1008];
  __shared__ float kernel_shared[432];
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
  if (((int)threadIdx.x) < 112) {
    pad_temp_shared[((((int)threadIdx.x) * 9))] = data[((((((((((int)threadIdx.x) * 9) / 336) * 12100) + (((((int)blockIdx.x) % 54) >> 1) * 440)) + ((((((int)threadIdx.x) * 9) % 336) / 56) * 110)) + ((((int)blockIdx.x) & 1) * 54)) + ((((int)threadIdx.x) * 9) % 56)))];
  }
  if (((int)threadIdx.x) < 112) {
    pad_temp_shared[(((((int)threadIdx.x) * 9) + 1))] = data[(((((((((((int)threadIdx.x) * 9) + 1) / 336) * 12100) + (((((int)blockIdx.x) % 54) >> 1) * 440)) + (((((((int)threadIdx.x) * 9) + 1) % 336) / 56) * 110)) + ((((int)blockIdx.x) & 1) * 54)) + (((((int)threadIdx.x) * 9) + 1) % 56)))];
  }
  if (((int)threadIdx.x) < 112) {
    pad_temp_shared[(((((int)threadIdx.x) * 9) + 2))] = data[(((((((((((int)threadIdx.x) * 9) + 2) / 336) * 12100) + (((((int)blockIdx.x) % 54) >> 1) * 440)) + (((((((int)threadIdx.x) * 9) + 2) % 336) / 56) * 110)) + ((((int)blockIdx.x) & 1) * 54)) + (((((int)threadIdx.x) * 9) + 2) % 56)))];
  }
  if (((int)threadIdx.x) < 112) {
    pad_temp_shared[(((((int)threadIdx.x) * 9) + 3))] = data[(((((((((((int)threadIdx.x) * 9) + 3) / 336) * 12100) + (((((int)blockIdx.x) % 54) >> 1) * 440)) + (((((((int)threadIdx.x) * 9) + 3) % 336) / 56) * 110)) + ((((int)blockIdx.x) & 1) * 54)) + (((((int)threadIdx.x) * 9) + 3) % 56)))];
  }
  if (((int)threadIdx.x) < 112) {
    pad_temp_shared[(((((int)threadIdx.x) * 9) + 4))] = data[(((((((((((int)threadIdx.x) * 9) + 4) / 336) * 12100) + (((((int)blockIdx.x) % 54) >> 1) * 440)) + (((((((int)threadIdx.x) * 9) + 4) % 336) / 56) * 110)) + ((((int)blockIdx.x) & 1) * 54)) + (((((int)threadIdx.x) * 9) + 4) % 56)))];
  }
  if (((int)threadIdx.x) < 112) {
    pad_temp_shared[(((((int)threadIdx.x) * 9) + 5))] = data[(((((((((((int)threadIdx.x) * 9) + 5) / 336) * 12100) + (((((int)blockIdx.x) % 54) >> 1) * 440)) + (((((((int)threadIdx.x) * 9) + 5) % 336) / 56) * 110)) + ((((int)blockIdx.x) & 1) * 54)) + (((((int)threadIdx.x) * 9) + 5) % 56)))];
  }
  if (((int)threadIdx.x) < 112) {
    pad_temp_shared[(((((int)threadIdx.x) * 9) + 6))] = data[(((((((((((int)threadIdx.x) * 9) + 6) / 336) * 12100) + (((((int)blockIdx.x) % 54) >> 1) * 440)) + (((((((int)threadIdx.x) * 9) + 6) % 336) / 56) * 110)) + ((((int)blockIdx.x) & 1) * 54)) + (((((int)threadIdx.x) * 9) + 6) % 56)))];
  }
  if (((int)threadIdx.x) < 112) {
    pad_temp_shared[(((((int)threadIdx.x) * 9) + 7))] = data[(((((((((((int)threadIdx.x) * 9) + 7) / 336) * 12100) + (((((int)blockIdx.x) % 54) >> 1) * 440)) + (((((((int)threadIdx.x) * 9) + 7) % 336) / 56) * 110)) + ((((int)blockIdx.x) & 1) * 54)) + (((((int)threadIdx.x) * 9) + 7) % 56)))];
  }
  if (((int)threadIdx.x) < 112) {
    pad_temp_shared[(((((int)threadIdx.x) * 9) + 8))] = data[(((((((((((int)threadIdx.x) * 9) + 8) / 336) * 12100) + (((((int)blockIdx.x) % 54) >> 1) * 440)) + (((((((int)threadIdx.x) * 9) + 8) % 336) / 56) * 110)) + ((((int)blockIdx.x) & 1) * 54)) + (((((int)threadIdx.x) * 9) + 8) % 56)))];
  }
  if (((int)threadIdx.x) < 72) {
    kernel_shared[((((int)threadIdx.x) * 6))] = kernel[((((((int)blockIdx.x) / 54) * 432) + (((int)threadIdx.x) * 6)))];
  }
  if (((int)threadIdx.x) < 72) {
    kernel_shared[(((((int)threadIdx.x) * 6) + 1))] = kernel[(((((((int)blockIdx.x) / 54) * 432) + (((int)threadIdx.x) * 6)) + 1))];
  }
  if (((int)threadIdx.x) < 72) {
    kernel_shared[(((((int)threadIdx.x) * 6) + 2))] = kernel[(((((((int)blockIdx.x) / 54) * 432) + (((int)threadIdx.x) * 6)) + 2))];
  }
  if (((int)threadIdx.x) < 72) {
    kernel_shared[(((((int)threadIdx.x) * 6) + 3))] = kernel[(((((((int)blockIdx.x) / 54) * 432) + (((int)threadIdx.x) * 6)) + 3))];
  }
  if (((int)threadIdx.x) < 72) {
    kernel_shared[(((((int)threadIdx.x) * 6) + 4))] = kernel[(((((((int)blockIdx.x) / 54) * 432) + (((int)threadIdx.x) * 6)) + 4))];
  }
  if (((int)threadIdx.x) < 72) {
    kernel_shared[(((((int)threadIdx.x) * 6) + 5))] = kernel[(((((((int)blockIdx.x) / 54) * 432) + (((int)threadIdx.x) * 6)) + 5))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((int)threadIdx.x) % 54))] * kernel_shared[(((((int)threadIdx.x) / 54) * 108))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 112))] * kernel_shared[(((((int)threadIdx.x) / 54) * 108))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 56))] * kernel_shared[(((((int)threadIdx.x) / 54) * 108))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 168))] * kernel_shared[(((((int)threadIdx.x) / 54) * 108))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((int)threadIdx.x) % 54))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 27))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 112))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 27))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 56))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 27))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 168))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 27))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((int)threadIdx.x) % 54))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 54))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 112))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 54))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 56))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 54))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 168))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 54))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((int)threadIdx.x) % 54))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 81))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 112))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 81))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 56))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 81))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 168))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 81))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 56))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 3))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 168))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 3))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 112))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 3))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 224))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 3))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 56))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 30))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 168))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 30))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 112))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 30))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 224))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 30))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 56))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 57))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 168))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 57))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 112))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 57))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 224))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 57))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 56))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 84))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 168))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 84))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 112))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 84))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 224))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 84))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 112))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 6))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 224))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 6))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 168))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 6))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 280))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 6))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 112))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 33))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 224))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 33))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 168))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 33))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 280))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 33))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 112))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 60))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 224))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 60))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 168))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 60))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 280))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 60))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 112))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 87))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 224))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 87))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 168))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 87))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 280))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 87))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 1))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 1))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 113))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 1))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 57))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 1))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 169))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 1))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 1))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 28))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 113))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 28))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 57))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 28))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 169))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 28))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 1))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 55))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 113))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 55))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 57))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 55))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 169))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 55))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 1))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 82))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 113))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 82))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 57))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 82))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 169))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 82))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 57))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 4))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 169))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 4))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 113))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 4))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 225))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 4))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 57))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 31))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 169))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 31))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 113))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 31))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 225))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 31))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 57))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 58))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 169))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 58))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 113))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 58))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 225))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 58))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 57))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 85))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 169))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 85))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 113))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 85))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 225))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 85))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 113))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 7))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 225))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 7))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 169))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 7))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 281))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 7))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 113))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 34))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 225))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 34))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 169))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 34))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 281))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 34))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 113))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 61))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 225))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 61))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 169))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 61))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 281))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 61))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 113))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 88))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 225))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 88))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 169))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 88))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 281))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 88))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 2))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 2))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 114))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 2))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 58))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 2))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 170))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 2))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 2))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 29))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 114))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 29))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 58))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 29))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 170))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 29))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 2))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 56))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 114))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 56))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 58))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 56))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 170))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 56))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 2))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 83))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 114))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 83))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 58))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 83))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 170))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 83))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 58))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 5))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 170))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 5))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 114))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 5))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 226))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 5))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 58))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 32))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 170))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 32))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 114))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 32))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 226))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 32))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 58))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 59))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 170))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 59))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 114))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 59))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 226))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 59))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 58))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 86))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 170))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 86))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 114))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 86))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 226))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 86))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 114))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 8))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 226))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 8))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 170))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 8))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 282))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 8))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 114))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 35))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 226))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 35))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 170))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 35))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 282))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 35))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 114))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 62))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 226))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 62))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 170))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 62))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 282))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 62))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 114))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 89))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 226))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 89))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 170))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 89))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 282))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 89))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 336))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 9))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 448))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 9))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 392))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 9))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 504))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 9))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 336))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 36))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 448))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 36))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 392))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 36))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 504))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 36))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 336))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 63))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 448))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 63))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 392))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 63))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 504))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 63))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 336))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 90))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 448))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 90))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 392))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 90))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 504))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 90))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 392))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 12))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 504))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 12))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 448))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 12))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 560))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 12))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 392))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 39))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 504))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 39))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 448))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 39))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 560))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 39))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 392))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 66))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 504))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 66))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 448))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 66))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 560))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 66))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 392))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 93))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 504))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 93))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 448))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 93))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 560))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 93))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 448))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 15))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 560))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 15))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 504))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 15))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 616))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 15))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 448))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 42))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 560))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 42))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 504))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 42))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 616))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 42))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 448))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 69))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 560))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 69))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 504))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 69))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 616))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 69))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 448))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 96))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 560))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 96))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 504))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 96))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 616))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 96))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 337))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 10))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 449))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 10))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 393))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 10))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 505))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 10))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 337))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 37))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 449))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 37))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 393))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 37))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 505))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 37))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 337))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 64))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 449))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 64))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 393))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 64))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 505))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 64))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 337))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 91))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 449))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 91))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 393))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 91))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 505))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 91))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 393))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 13))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 505))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 13))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 449))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 13))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 561))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 13))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 393))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 40))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 505))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 40))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 449))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 40))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 561))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 40))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 393))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 67))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 505))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 67))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 449))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 67))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 561))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 67))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 393))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 94))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 505))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 94))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 449))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 94))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 561))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 94))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 449))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 16))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 561))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 16))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 505))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 16))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 617))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 16))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 449))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 43))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 561))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 43))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 505))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 43))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 617))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 43))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 449))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 70))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 561))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 70))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 505))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 70))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 617))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 70))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 449))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 97))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 561))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 97))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 505))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 97))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 617))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 97))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 338))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 11))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 450))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 11))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 394))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 11))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 506))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 11))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 338))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 38))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 450))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 38))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 394))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 38))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 506))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 38))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 338))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 65))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 450))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 65))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 394))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 65))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 506))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 65))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 338))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 92))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 450))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 92))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 394))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 92))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 506))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 92))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 394))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 14))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 506))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 14))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 450))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 14))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 562))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 14))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 394))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 41))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 506))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 41))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 450))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 41))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 562))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 41))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 394))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 68))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 506))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 68))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 450))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 68))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 562))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 68))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 394))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 95))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 506))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 95))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 450))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 95))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 562))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 95))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 450))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 17))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 562))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 17))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 506))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 17))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 618))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 17))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 450))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 44))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 562))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 44))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 506))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 44))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 618))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 44))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 450))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 71))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 562))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 71))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 506))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 71))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 618))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 71))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 450))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 98))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 562))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 98))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 506))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 98))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 618))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 98))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 672))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 18))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 784))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 18))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 728))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 18))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 840))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 18))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 672))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 45))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 784))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 45))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 728))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 45))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 840))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 45))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 672))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 72))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 784))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 72))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 728))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 72))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 840))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 72))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 672))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 99))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 784))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 99))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 728))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 99))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 840))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 99))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 728))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 21))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 840))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 21))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 784))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 21))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 896))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 21))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 728))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 48))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 840))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 48))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 784))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 48))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 896))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 48))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 728))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 75))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 840))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 75))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 784))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 75))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 896))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 75))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 728))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 102))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 840))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 102))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 784))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 102))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 896))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 102))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 784))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 24))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 896))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 24))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 840))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 24))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 952))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 24))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 784))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 51))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 896))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 51))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 840))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 51))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 952))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 51))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 784))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 78))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 896))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 78))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 840))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 78))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 952))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 78))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 784))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 105))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 896))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 105))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 840))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 105))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 952))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 105))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 673))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 19))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 785))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 19))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 729))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 19))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 841))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 19))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 673))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 46))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 785))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 46))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 729))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 46))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 841))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 46))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 673))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 73))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 785))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 73))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 729))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 73))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 841))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 73))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 673))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 100))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 785))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 100))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 729))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 100))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 841))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 100))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 729))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 22))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 841))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 22))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 785))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 22))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 897))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 22))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 729))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 49))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 841))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 49))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 785))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 49))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 897))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 49))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 729))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 76))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 841))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 76))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 785))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 76))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 897))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 76))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 729))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 103))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 841))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 103))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 785))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 103))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 897))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 103))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 785))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 25))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 897))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 25))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 841))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 25))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 953))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 25))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 785))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 52))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 897))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 52))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 841))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 52))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 953))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 52))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 785))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 79))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 897))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 79))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 841))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 79))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 953))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 79))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 785))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 106))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 897))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 106))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 841))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 106))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 953))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 106))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 674))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 20))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 786))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 20))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 730))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 20))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 842))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 20))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 674))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 47))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 786))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 47))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 730))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 47))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 842))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 47))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 674))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 74))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 786))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 74))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 730))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 74))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 842))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 74))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 674))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 101))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 786))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 101))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 730))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 101))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 842))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 101))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 730))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 23))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 842))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 23))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 786))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 23))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 898))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 23))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 730))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 50))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 842))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 50))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 786))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 50))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 898))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 50))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 730))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 77))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 842))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 77))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 786))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 77))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 898))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 77))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 730))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 104))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 842))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 104))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 786))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 104))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 898))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 104))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 786))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 26))]));
  compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 898))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 26))]));
  compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 842))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 26))]));
  compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 954))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 26))]));
  compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 786))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 53))]));
  compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 898))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 53))]));
  compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 842))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 53))]));
  compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 954))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 53))]));
  compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 786))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 80))]));
  compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 898))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 80))]));
  compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 842))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 80))]));
  compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 954))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 80))]));
  compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 786))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 107))]));
  compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 898))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 107))]));
  compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 842))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 107))]));
  compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(((((int)threadIdx.x) % 54) + 954))] * kernel_shared[((((((int)threadIdx.x) / 54) * 108) + 107))]));
  for (int ff_inner = 0; ff_inner < 4; ++ff_inner) {
    for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
      compute[(((((((((((int)blockIdx.x) / 54) * 186624) + ((((int)threadIdx.x) / 54) * 46656)) + (ff_inner * 11664)) + (((((int)blockIdx.x) % 54) >> 1) * 432)) + (yy_inner * 108)) + ((((int)blockIdx.x) & 1) * 54)) + (((int)threadIdx.x) % 54)))] = compute_local[(((ff_inner * 2) + yy_inner))];
      compute[((((((((((((int)blockIdx.x) / 54) * 186624) + ((((int)threadIdx.x) / 54) * 46656)) + (ff_inner * 11664)) + (((((int)blockIdx.x) % 54) >> 1) * 432)) + (yy_inner * 108)) + ((((int)blockIdx.x) & 1) * 54)) + (((int)threadIdx.x) % 54)) + 216))] = compute_local[((((ff_inner * 2) + yy_inner) + 8))];
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
                    
dim3 size_grid(108,1,1);

dim3 size_block(216,1,1);
 
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
            