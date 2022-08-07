
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[8];
  __shared__ float pad_temp_shared[1792];
  __shared__ float kernel_shared[2304];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[(((int)threadIdx.x))] = data[(((((rc_outer_outer * 25088) + ((((int)threadIdx.x) / 224) * 3136)) + ((((int)blockIdx.x) % 27) * 112)) + (((int)threadIdx.x) % 224)))];
    pad_temp_shared[((((int)threadIdx.x) + 432))] = data[(((((rc_outer_outer * 25088) + (((((int)threadIdx.x) + 432) / 224) * 3136)) + ((((int)blockIdx.x) % 27) * 112)) + ((((int)threadIdx.x) + 208) % 224)))];
    pad_temp_shared[((((int)threadIdx.x) + 864))] = data[(((((rc_outer_outer * 25088) + (((((int)threadIdx.x) + 864) / 224) * 3136)) + ((((int)blockIdx.x) % 27) * 112)) + ((((int)threadIdx.x) + 192) % 224)))];
    pad_temp_shared[((((int)threadIdx.x) + 1296))] = data[(((((rc_outer_outer * 25088) + (((((int)threadIdx.x) + 1296) / 224) * 3136)) + ((((int)blockIdx.x) % 27) * 112)) + ((((int)threadIdx.x) + 176) % 224)))];
    if (((int)threadIdx.x) < 64) {
      pad_temp_shared[((((int)threadIdx.x) + 1728))] = data[(((((rc_outer_outer * 25088) + (((((int)threadIdx.x) + 1728) / 224) * 3136)) + ((((int)blockIdx.x) % 27) * 112)) + (((int)threadIdx.x) + 160)))];
    }
    kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 27) * 18432) + ((((int)threadIdx.x) / 72) * 576)) + (rc_outer_outer * 72)) + (((int)threadIdx.x) % 72)))];
    kernel_shared[((((int)threadIdx.x) + 432))] = kernel[(((((((((int)blockIdx.x) / 27) * 18432) + ((((int)threadIdx.x) / 72) * 576)) + (rc_outer_outer * 72)) + (((int)threadIdx.x) % 72)) + 3456))];
    kernel_shared[((((int)threadIdx.x) + 864))] = kernel[(((((((((int)blockIdx.x) / 27) * 18432) + ((((int)threadIdx.x) / 72) * 576)) + (rc_outer_outer * 72)) + (((int)threadIdx.x) % 72)) + 6912))];
    kernel_shared[((((int)threadIdx.x) + 1296))] = kernel[(((((((((int)blockIdx.x) / 27) * 18432) + ((((int)threadIdx.x) / 72) * 576)) + (rc_outer_outer * 72)) + (((int)threadIdx.x) % 72)) + 10368))];
    kernel_shared[((((int)threadIdx.x) + 1728))] = kernel[(((((((((int)blockIdx.x) / 27) * 18432) + ((((int)threadIdx.x) / 72) * 576)) + (rc_outer_outer * 72)) + (((int)threadIdx.x) % 72)) + 13824))];
    if (((int)threadIdx.x) < 144) {
      kernel_shared[((((int)threadIdx.x) + 2160))] = kernel[(((((((((int)blockIdx.x) / 27) * 18432) + ((((int)threadIdx.x) / 72) * 576)) + (rc_outer_outer * 72)) + (((int)threadIdx.x) % 72)) + 17280))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)))] * kernel_shared[((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1152))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 72))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1224))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1153))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 73))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 1))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1225))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 2))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1154))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 74))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 2))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1226))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 56))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 3))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 56))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1155))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 56))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 75))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 56))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1227))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 57))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 4))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 57))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1156))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 57))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 76))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 57))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1228))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 58))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 5))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 58))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1157))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 58))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 77))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 58))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1229))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 112))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 6))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 112))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1158))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 112))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 78))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 112))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1230))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 113))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 7))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 113))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1159))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 113))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 79))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 113))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1231))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 114))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 8))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 114))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1160))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 114))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 80))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 114))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1232))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 224))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 9))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 224))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1161))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 224))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 81))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 224))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1233))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 225))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 10))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 225))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1162))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 225))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 82))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 225))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1234))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 226))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 11))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 226))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1163))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 226))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 83))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 226))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1235))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 12))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1164))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 84))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1236))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 13))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1165))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 85))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1237))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 14))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1166))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 86))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1238))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 336))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 15))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 336))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1167))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 336))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 87))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 336))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1239))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 337))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 16))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 337))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1168))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 337))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 88))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 337))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1240))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 338))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 17))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 338))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1169))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 338))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 89))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 338))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1241))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 448))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 18))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 448))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1170))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 448))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 90))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 448))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1242))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 449))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 19))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 449))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1171))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 449))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 91))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 449))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1243))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 450))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 20))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 450))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1172))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 450))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 92))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 450))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1244))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 504))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 21))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 504))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1173))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 504))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 93))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 504))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1245))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 505))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 22))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 505))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1174))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 505))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 94))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 505))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1246))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 506))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 23))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 506))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1175))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 506))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 95))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 506))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1247))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 560))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 24))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 560))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1176))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 560))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 96))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 560))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1248))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 561))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 25))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 561))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1177))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 561))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 97))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 561))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1249))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 562))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 26))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 562))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1178))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 562))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 98))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 562))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1250))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 672))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 27))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 672))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1179))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 672))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 99))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 672))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1251))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 673))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 28))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 673))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1180))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 673))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 100))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 673))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1252))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 674))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 29))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 674))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1181))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 674))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 101))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 674))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1253))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 728))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 30))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 728))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1182))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 728))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 102))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 728))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1254))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 729))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 31))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 729))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1183))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 729))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 103))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 729))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1255))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 730))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 32))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 730))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1184))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 730))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 104))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 730))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1256))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 784))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 33))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 784))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1185))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 784))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 105))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 784))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1257))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 785))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 34))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 785))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1186))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 785))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 106))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 785))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1258))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 786))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 35))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 786))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1187))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 786))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 107))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 786))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1259))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 56))] * kernel_shared[((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 56))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1152))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 56))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 72))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 56))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1224))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 57))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 57))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1153))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 57))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 73))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 57))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1225))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 58))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 2))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 58))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1154))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 58))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 74))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 58))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1226))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 112))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 3))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 112))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1155))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 112))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 75))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 112))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1227))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 113))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 4))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 113))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1156))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 113))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 76))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 113))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1228))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 114))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 5))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 114))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1157))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 114))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 77))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 114))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1229))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 168))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 6))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 168))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1158))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 168))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 78))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 168))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1230))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 169))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 7))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 169))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1159))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 169))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 79))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 169))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1231))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 170))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 8))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 170))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1160))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 170))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 80))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 170))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1232))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 9))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1161))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 81))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 280))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1233))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 10))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1162))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 82))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 281))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1234))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 11))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1163))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 83))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 282))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1235))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 336))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 12))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 336))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1164))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 336))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 84))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 336))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1236))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 337))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 13))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 337))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1165))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 337))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 85))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 337))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1237))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 338))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 14))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 338))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1166))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 338))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 86))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 338))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1238))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 392))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 15))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 392))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1167))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 392))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 87))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 392))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1239))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 393))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 16))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 393))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1168))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 393))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 88))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 393))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1240))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 394))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 17))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 394))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1169))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 394))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 89))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 394))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1241))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 504))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 18))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 504))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1170))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 504))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 90))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 504))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1242))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 505))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 19))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 505))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1171))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 505))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 91))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 505))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1243))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 506))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 20))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 506))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1172))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 506))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 92))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 506))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1244))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 560))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 21))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 560))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1173))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 560))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 93))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 560))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1245))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 561))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 22))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 561))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1174))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 561))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 94))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 561))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1246))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 562))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 23))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 562))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1175))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 562))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 95))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 562))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1247))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 616))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 24))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 616))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1176))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 616))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 96))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 616))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1248))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 617))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 25))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 617))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1177))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 617))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 97))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 617))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1249))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 618))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 26))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 618))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1178))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 618))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 98))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 618))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1250))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 728))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 27))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 728))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1179))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 728))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 99))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 728))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1251))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 729))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 28))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 729))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1180))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 729))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 100))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 729))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1252))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 730))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 29))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 730))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1181))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 730))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 101))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 730))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1253))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 784))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 30))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 784))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1182))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 784))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 102))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 784))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1254))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 785))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 31))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 785))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1183))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 785))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 103))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 785))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1255))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 786))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 32))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 786))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1184))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 786))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 104))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 786))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1256))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 840))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 33))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 840))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1185))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 840))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 105))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 840))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1257))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 841))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 34))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 841))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1186))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 841))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 106))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 841))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1258))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 842))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 35))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 842))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1187))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 842))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 107))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 896) + (((int)threadIdx.x) % 54)) + 842))] * kernel_shared[(((((((int)threadIdx.x) / 54) * 144) + (rc_outer_inner * 36)) + 1259))]));
    }
  }
  for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
    for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
      compute[((((((((((int)blockIdx.x) / 27) * 93312) + ((((int)threadIdx.x) / 54) * 5832)) + (ff_inner * 2916)) + ((((int)blockIdx.x) % 27) * 108)) + (yy_inner * 54)) + (((int)threadIdx.x) % 54)))] = compute_local[(((ff_inner * 2) + yy_inner))];
      compute[(((((((((((int)blockIdx.x) / 27) * 93312) + ((((int)threadIdx.x) / 54) * 5832)) + (ff_inner * 2916)) + ((((int)blockIdx.x) % 27) * 108)) + (yy_inner * 54)) + (((int)threadIdx.x) % 54)) + 46656))] = compute_local[((((ff_inner * 2) + yy_inner) + 4))];
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
                    
dim3 size_grid(54,1,1);

dim3 size_block(432,1,1);
 
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
            