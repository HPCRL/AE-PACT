
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[2];
  __shared__ float pad_temp_shared[360];
  __shared__ float kernel_shared[2304];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[((((int)threadIdx.x) * 2))] = data[((((((rc_outer_outer * 2048) + (((((int)threadIdx.x) * 2) / 45) * 256)) + ((((int)blockIdx.x) % 7) * 32)) + ((((((int)threadIdx.x) * 2) % 45) / 15) * 16)) + ((((int)threadIdx.x) * 2) % 15)))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 1))] = data[((((((rc_outer_outer * 2048) + ((((((int)threadIdx.x) * 2) + 1) / 45) * 256)) + ((((int)blockIdx.x) % 7) * 32)) + (((((((int)threadIdx.x) * 2) + 1) % 45) / 15) * 16)) + (((((int)threadIdx.x) * 2) + 1) % 15)))];
    if (((int)threadIdx.x) < 68) {
      pad_temp_shared[(((((int)threadIdx.x) * 2) + 224))] = data[((((((rc_outer_outer * 2048) + ((((((int)threadIdx.x) * 2) + 224) / 45) * 256)) + ((((int)blockIdx.x) % 7) * 32)) + (((((((int)threadIdx.x) * 2) + 44) % 45) / 15) * 16)) + (((((int)threadIdx.x) * 2) + 14) % 15)))];
    }
    if (((int)threadIdx.x) < 68) {
      pad_temp_shared[(((((int)threadIdx.x) * 2) + 225))] = data[(((((((rc_outer_outer * 2048) + (((((int)threadIdx.x) * 2) / 45) * 256)) + ((((int)blockIdx.x) % 7) * 32)) + ((((((int)threadIdx.x) * 2) % 45) / 15) * 16)) + ((((int)threadIdx.x) * 2) % 15)) + 1280))];
    }
    kernel_shared[((((int)threadIdx.x) * 3))] = kernel[((((((((int)blockIdx.x) / 7) * 73728) + ((((int)threadIdx.x) / 24) * 2304)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 24) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 1))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + ((((int)threadIdx.x) / 24) * 2304)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 24) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 2))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + ((((int)threadIdx.x) / 24) * 2304)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 24) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 336))] = kernel[((((((((int)blockIdx.x) / 7) * 73728) + (((((int)threadIdx.x) + 112) / 24) * 2304)) + (rc_outer_outer * 72)) + (((((int)threadIdx.x) + 16) % 24) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 337))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + (((((int)threadIdx.x) + 112) / 24) * 2304)) + (rc_outer_outer * 72)) + (((((int)threadIdx.x) + 16) % 24) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 338))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + (((((int)threadIdx.x) + 112) / 24) * 2304)) + (rc_outer_outer * 72)) + (((((int)threadIdx.x) + 16) % 24) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 672))] = kernel[((((((((int)blockIdx.x) / 7) * 73728) + (((((int)threadIdx.x) + 224) / 24) * 2304)) + (rc_outer_outer * 72)) + (((((int)threadIdx.x) + 8) % 24) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 673))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + (((((int)threadIdx.x) + 224) / 24) * 2304)) + (rc_outer_outer * 72)) + (((((int)threadIdx.x) + 8) % 24) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 674))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + (((((int)threadIdx.x) + 224) / 24) * 2304)) + (rc_outer_outer * 72)) + (((((int)threadIdx.x) + 8) % 24) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 1008))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + ((((int)threadIdx.x) / 24) * 2304)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 24) * 3)) + 32256))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 1009))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + ((((int)threadIdx.x) / 24) * 2304)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 24) * 3)) + 32257))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 1010))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + ((((int)threadIdx.x) / 24) * 2304)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 24) * 3)) + 32258))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 1344))] = kernel[((((((((int)blockIdx.x) / 7) * 73728) + (((((int)threadIdx.x) + 448) / 24) * 2304)) + (rc_outer_outer * 72)) + (((((int)threadIdx.x) + 16) % 24) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 1345))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + (((((int)threadIdx.x) + 448) / 24) * 2304)) + (rc_outer_outer * 72)) + (((((int)threadIdx.x) + 16) % 24) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 1346))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + (((((int)threadIdx.x) + 448) / 24) * 2304)) + (rc_outer_outer * 72)) + (((((int)threadIdx.x) + 16) % 24) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 1680))] = kernel[((((((((int)blockIdx.x) / 7) * 73728) + (((((int)threadIdx.x) + 560) / 24) * 2304)) + (rc_outer_outer * 72)) + (((((int)threadIdx.x) + 8) % 24) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 1681))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + (((((int)threadIdx.x) + 560) / 24) * 2304)) + (rc_outer_outer * 72)) + (((((int)threadIdx.x) + 8) % 24) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 3) + 1682))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + (((((int)threadIdx.x) + 560) / 24) * 2304)) + (rc_outer_outer * 72)) + (((((int)threadIdx.x) + 8) % 24) * 3)) + 2))];
    if (((int)threadIdx.x) < 96) {
      kernel_shared[(((((int)threadIdx.x) * 3) + 2016))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + ((((int)threadIdx.x) / 24) * 2304)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 24) * 3)) + 64512))];
      kernel_shared[(((((int)threadIdx.x) * 3) + 2017))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + ((((int)threadIdx.x) / 24) * 2304)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 24) * 3)) + 64513))];
      kernel_shared[(((((int)threadIdx.x) * 3) + 2018))] = kernel[(((((((((int)blockIdx.x) / 7) * 73728) + ((((int)threadIdx.x) / 24) * 2304)) + (rc_outer_outer * 72)) + ((((int)threadIdx.x) % 24) * 3)) + 64514))];
    }
    __syncthreads();
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 144))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 15))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 3))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 30))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 6))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 45))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 9))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 60))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 12))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 75))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 15))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 72))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 15))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 75))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 30))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 78))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 45))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 81))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 60))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 84))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 75))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 87))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 1))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 1))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 16))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 4))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 31))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 7))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 46))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 10))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 61))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 13))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 76))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 16))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 1))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 73))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 16))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 76))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 31))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 79))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 46))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 82))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 61))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 85))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 76))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 88))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 2))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 2))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 17))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 5))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 32))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 8))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 47))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 11))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 62))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 14))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 77))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 17))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 2))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 74))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 17))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 77))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 32))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 80))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 47))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 83))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 62))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 86))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 77))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 89))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 90))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 18))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 105))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 21))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 120))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 24))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 135))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 27))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 150))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 30))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 165))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 33))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 90))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 90))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 105))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 93))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 120))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 96))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 135))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 99))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 150))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 102))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 165))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 105))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 19))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 106))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 22))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 121))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 25))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 136))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 28))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 151))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 31))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 166))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 34))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 91))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 106))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 94))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 121))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 97))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 136))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 100))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 151))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 103))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 166))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 106))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 92))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 20))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 107))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 23))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 122))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 26))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 137))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 29))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 152))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 32))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 167))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 35))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 92))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 92))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 107))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 95))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 122))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 98))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 137))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 101))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 152))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 104))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 167))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 107))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 180))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 36))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 39))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 210))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 42))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 225))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 45))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 240))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 48))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 255))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 51))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 180))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 108))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 111))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 210))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 114))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 225))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 117))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 240))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 120))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 255))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 123))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 181))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 37))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 196))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 40))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 43))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 226))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 46))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 241))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 49))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 256))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 52))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 181))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 109))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 196))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 112))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 211))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 115))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 226))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 118))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 241))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 121))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 256))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 124))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 38))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 197))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 41))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 44))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 227))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 47))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 242))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 50))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 257))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 53))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 110))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 197))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 113))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 212))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 116))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 227))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 119))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 242))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 122))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 257))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 125))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 270))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 54))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 285))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 57))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 300))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 60))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 315))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 63))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 330))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 66))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 345))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 69))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 270))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 126))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 285))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 129))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 300))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 132))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 315))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 135))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 330))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 138))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 345))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 141))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 271))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 55))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 286))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 58))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 301))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 61))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 316))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 64))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 331))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 67))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 346))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 70))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 271))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 127))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 286))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 130))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 301))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 133))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 316))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 136))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 331))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 139))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 346))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 142))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 272))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 56))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 287))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 59))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 302))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 62))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 317))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 65))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 332))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 68))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 347))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 71))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 272))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 128))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 287))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 131))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 302))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 134))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 317))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 137))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 332))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 140))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 347))] * kernel_shared[((((((int)threadIdx.x) / 7) * 144) + 143))]));
  }
  for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
    compute[(((((((((int)blockIdx.x) / 7) * 1568) + ((((int)threadIdx.x) / 7) * 98)) + (ff_inner * 49)) + ((((int)blockIdx.x) % 7) * 7)) + (((int)threadIdx.x) % 7)))] = compute_local[(ff_inner)];
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
            