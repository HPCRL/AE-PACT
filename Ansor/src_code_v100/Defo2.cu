
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[6];
  __shared__ float pad_temp_shared[580];
  __shared__ float kernel_shared[576];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[(((int)threadIdx.x))] = data[(((((rc_outer_outer * 3364) + ((((int)threadIdx.x) / 145) * 841)) + ((((int)blockIdx.x) % 9) * 87)) + (((int)threadIdx.x) % 145)))];
    pad_temp_shared[((((int)threadIdx.x) + 216))] = data[(((((rc_outer_outer * 3364) + (((((int)threadIdx.x) + 216) / 145) * 841)) + ((((int)blockIdx.x) % 9) * 87)) + ((((int)threadIdx.x) + 71) % 145)))];
    if (((int)threadIdx.x) < 148) {
      pad_temp_shared[((((int)threadIdx.x) + 432))] = data[(((((rc_outer_outer * 3364) + (((((int)threadIdx.x) + 432) / 145) * 841)) + ((((int)blockIdx.x) % 9) * 87)) + ((((int)threadIdx.x) + 142) % 145)))];
    }
    kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 9) * 9216) + ((((int)threadIdx.x) / 36) * 576)) + (rc_outer_outer * 36)) + (((int)threadIdx.x) % 36)))];
    kernel_shared[((((int)threadIdx.x) + 216))] = kernel[(((((((((int)blockIdx.x) / 9) * 9216) + ((((int)threadIdx.x) / 36) * 576)) + (rc_outer_outer * 36)) + (((int)threadIdx.x) % 36)) + 3456))];
    if (((int)threadIdx.x) < 144) {
      kernel_shared[((((int)threadIdx.x) + 432))] = kernel[(((((((((int)blockIdx.x) / 9) * 9216) + ((((int)threadIdx.x) / 36) * 576)) + (rc_outer_outer * 36)) + (((int)threadIdx.x) % 36)) + 6912))];
    }
    __syncthreads();
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((int)threadIdx.x) % 27))] * kernel_shared[(((((int)threadIdx.x) / 27) * 72))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 29))] * kernel_shared[(((((int)threadIdx.x) / 27) * 72))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 58))] * kernel_shared[(((((int)threadIdx.x) / 27) * 72))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((int)threadIdx.x) % 27))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 36))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 29))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 36))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 58))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 36))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 1))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 1))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 30))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 1))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 59))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 1))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 1))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 37))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 30))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 37))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 59))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 37))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 2))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 2))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 31))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 2))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 60))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 2))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 2))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 38))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 31))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 38))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 60))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 38))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 29))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 3))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 58))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 3))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 87))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 3))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 29))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 39))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 58))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 39))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 87))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 39))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 30))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 4))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 59))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 4))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 88))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 4))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 30))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 40))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 59))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 40))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 88))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 40))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 31))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 5))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 60))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 5))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 89))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 5))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 31))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 41))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 60))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 41))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 89))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 41))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 58))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 6))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 87))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 6))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 116))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 6))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 58))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 42))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 87))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 42))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 116))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 42))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 59))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 7))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 88))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 7))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 117))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 7))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 59))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 43))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 88))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 43))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 117))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 43))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 60))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 8))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 89))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 8))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 118))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 8))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 60))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 44))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 89))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 44))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 118))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 44))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 145))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 9))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 174))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 9))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 203))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 9))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 145))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 45))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 174))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 45))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 203))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 45))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 146))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 10))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 175))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 10))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 204))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 10))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 146))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 46))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 175))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 46))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 204))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 46))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 147))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 11))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 176))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 11))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 205))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 11))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 147))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 47))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 176))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 47))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 205))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 47))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 174))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 12))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 203))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 12))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 232))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 12))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 174))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 48))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 203))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 48))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 232))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 48))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 175))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 13))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 204))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 13))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 233))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 13))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 175))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 49))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 204))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 49))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 233))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 49))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 176))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 14))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 205))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 14))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 234))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 14))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 176))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 50))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 205))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 50))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 234))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 50))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 203))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 15))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 232))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 15))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 261))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 15))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 203))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 51))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 232))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 51))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 261))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 51))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 204))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 16))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 233))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 16))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 262))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 16))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 204))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 52))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 233))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 52))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 262))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 52))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 205))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 17))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 234))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 17))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 263))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 17))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 205))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 53))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 234))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 53))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 263))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 53))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 290))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 18))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 319))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 18))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 348))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 18))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 290))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 54))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 319))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 54))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 348))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 54))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 291))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 19))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 320))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 19))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 349))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 19))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 291))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 55))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 320))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 55))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 349))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 55))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 292))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 20))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 321))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 20))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 350))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 20))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 292))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 56))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 321))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 56))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 350))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 56))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 319))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 21))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 348))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 21))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 377))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 21))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 319))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 57))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 348))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 57))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 377))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 57))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 320))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 22))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 349))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 22))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 378))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 22))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 320))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 58))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 349))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 58))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 378))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 58))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 321))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 23))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 350))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 23))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 379))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 23))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 321))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 59))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 350))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 59))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 379))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 59))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 348))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 24))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 377))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 24))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 406))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 24))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 348))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 60))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 377))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 60))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 406))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 60))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 349))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 25))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 378))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 25))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 407))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 25))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 349))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 61))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 378))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 61))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 407))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 61))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 350))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 26))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 379))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 26))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 408))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 26))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 350))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 62))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 379))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 62))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 408))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 62))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 435))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 27))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 464))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 27))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 493))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 27))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 435))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 63))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 464))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 63))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 493))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 63))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 436))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 28))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 465))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 28))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 494))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 28))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 436))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 64))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 465))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 64))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 494))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 64))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 437))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 29))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 466))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 29))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 495))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 29))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 437))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 65))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 466))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 65))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 495))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 65))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 464))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 30))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 493))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 30))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 522))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 30))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 464))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 66))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 493))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 66))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 522))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 66))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 465))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 31))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 494))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 31))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 523))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 31))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 465))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 67))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 494))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 67))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 523))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 67))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 466))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 32))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 495))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 32))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 524))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 32))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 466))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 68))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 495))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 68))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 524))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 68))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 493))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 33))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 522))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 33))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 551))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 33))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 493))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 69))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 522))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 69))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 551))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 69))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 494))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 34))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 523))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 34))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 552))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 34))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 494))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 70))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 523))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 70))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 552))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 70))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 495))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 35))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 524))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 35))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 553))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 35))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 495))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 71))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 524))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 71))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((int)threadIdx.x) % 27) + 553))] * kernel_shared[((((((int)threadIdx.x) / 27) * 72) + 71))]));
  }
  for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
    compute[(((((((((int)blockIdx.x) / 9) * 11664) + ((((int)threadIdx.x) / 27) * 1458)) + (ff_inner * 729)) + ((((int)blockIdx.x) % 9) * 81)) + (((int)threadIdx.x) % 27)))] = compute_local[(ff_inner)];
    compute[((((((((((int)blockIdx.x) / 9) * 11664) + ((((int)threadIdx.x) / 27) * 1458)) + (ff_inner * 729)) + ((((int)blockIdx.x) % 9) * 81)) + (((int)threadIdx.x) % 27)) + 27))] = compute_local[((ff_inner + 2))];
    compute[((((((((((int)blockIdx.x) / 9) * 11664) + ((((int)threadIdx.x) / 27) * 1458)) + (ff_inner * 729)) + ((((int)blockIdx.x) % 9) * 81)) + (((int)threadIdx.x) % 27)) + 54))] = compute_local[((ff_inner + 4))];
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
                    
dim3 size_grid(72,1,1);

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
            