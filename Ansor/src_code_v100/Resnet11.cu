
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[1];
  __shared__ float pad_temp_shared[208];
  __shared__ float kernel_shared[256];
  compute_local[(0)] = 0.000000e+00f;
  pad_temp_shared[(((int)threadIdx.x))] = data[(((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[(((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 1792))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3584))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 3136))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 3136))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 16))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 1808))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3600))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 6272))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 6272))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 32))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 1824))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3616))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 9408))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 9408))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 48))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 1840))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3632))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 12544))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 12544))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 64))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 1856))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3648))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 15680))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 15680))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 80))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 1872))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3664))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 18816))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 18816))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 96))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 1888))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3680))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 21952))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 21952))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 112))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 1904))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3696))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 25088))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 25088))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 128))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 1920))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3712))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 28224))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 28224))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 144))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 1936))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3728))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 31360))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 31360))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 160))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 1952))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3744))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 34496))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 34496))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 176))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 1968))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3760))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 37632))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 37632))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 192))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 1984))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3776))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 40768))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 40768))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 208))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 2000))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3792))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 43904))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 43904))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 224))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 2016))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3808))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  __syncthreads();
  pad_temp_shared[(((int)threadIdx.x))] = data[((((((((int)threadIdx.x) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + (((int)threadIdx.x) % 13)) + 47040))];
  if (((int)threadIdx.x) < 96) {
    pad_temp_shared[((((int)threadIdx.x) + 112))] = data[(((((((((int)threadIdx.x) + 112) / 13) * 196) + ((((int)blockIdx.x) % 7) * 28)) + ((((int)threadIdx.x) + 8) % 13)) + 47040))];
  }
  kernel_shared[(((int)threadIdx.x))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 240))];
  kernel_shared[((((int)threadIdx.x) + 112))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 2032))];
  if (((int)threadIdx.x) < 32) {
    kernel_shared[((((int)threadIdx.x) + 224))] = kernel[((((((((int)blockIdx.x) / 7) * 4096) + ((((int)threadIdx.x) >> 4) * 256)) + (((int)threadIdx.x) & 15)) + 3824))];
  }
  __syncthreads();
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((int)threadIdx.x) % 7) * 2))] * kernel_shared[(((((int)threadIdx.x) / 7) * 16))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 13))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 1))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 26))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 2))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 39))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 3))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 52))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 4))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 65))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 5))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 78))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 6))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 91))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 7))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 104))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 8))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 117))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 9))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 130))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 10))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 143))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 11))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 156))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 12))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 169))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 13))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 182))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 14))]));
  compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) % 7) * 2) + 195))] * kernel_shared[((((((int)threadIdx.x) / 7) * 16) + 15))]));
  compute[((((((((int)blockIdx.x) / 7) * 784) + ((((int)threadIdx.x) / 7) * 49)) + ((((int)blockIdx.x) % 7) * 7)) + (((int)threadIdx.x) % 7)))] = compute_local[(0)];
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
                    
dim3 size_grid(224,1,1);

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
            