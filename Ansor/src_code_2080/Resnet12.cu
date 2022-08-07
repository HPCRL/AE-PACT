
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[8];
  __shared__ float pad_temp_shared[5184];
  __shared__ float kernel_shared[4608];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[(((int)threadIdx.x))] = data[(((rc_outer_outer * 5184) + ((int)threadIdx.x)))];
    pad_temp_shared[((((int)threadIdx.x) + 49))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 49))];
    pad_temp_shared[((((int)threadIdx.x) + 98))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 98))];
    pad_temp_shared[((((int)threadIdx.x) + 147))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 147))];
    pad_temp_shared[((((int)threadIdx.x) + 196))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 196))];
    pad_temp_shared[((((int)threadIdx.x) + 245))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 245))];
    pad_temp_shared[((((int)threadIdx.x) + 294))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 294))];
    pad_temp_shared[((((int)threadIdx.x) + 343))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 343))];
    pad_temp_shared[((((int)threadIdx.x) + 392))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 392))];
    pad_temp_shared[((((int)threadIdx.x) + 441))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 441))];
    pad_temp_shared[((((int)threadIdx.x) + 490))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 490))];
    pad_temp_shared[((((int)threadIdx.x) + 539))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 539))];
    pad_temp_shared[((((int)threadIdx.x) + 588))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 588))];
    pad_temp_shared[((((int)threadIdx.x) + 637))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 637))];
    pad_temp_shared[((((int)threadIdx.x) + 686))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 686))];
    pad_temp_shared[((((int)threadIdx.x) + 735))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 735))];
    pad_temp_shared[((((int)threadIdx.x) + 784))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 784))];
    pad_temp_shared[((((int)threadIdx.x) + 833))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 833))];
    pad_temp_shared[((((int)threadIdx.x) + 882))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 882))];
    pad_temp_shared[((((int)threadIdx.x) + 931))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 931))];
    pad_temp_shared[((((int)threadIdx.x) + 980))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 980))];
    pad_temp_shared[((((int)threadIdx.x) + 1029))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1029))];
    pad_temp_shared[((((int)threadIdx.x) + 1078))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1078))];
    pad_temp_shared[((((int)threadIdx.x) + 1127))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1127))];
    pad_temp_shared[((((int)threadIdx.x) + 1176))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1176))];
    pad_temp_shared[((((int)threadIdx.x) + 1225))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1225))];
    pad_temp_shared[((((int)threadIdx.x) + 1274))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1274))];
    pad_temp_shared[((((int)threadIdx.x) + 1323))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1323))];
    pad_temp_shared[((((int)threadIdx.x) + 1372))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1372))];
    pad_temp_shared[((((int)threadIdx.x) + 1421))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1421))];
    pad_temp_shared[((((int)threadIdx.x) + 1470))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1470))];
    pad_temp_shared[((((int)threadIdx.x) + 1519))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1519))];
    pad_temp_shared[((((int)threadIdx.x) + 1568))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1568))];
    pad_temp_shared[((((int)threadIdx.x) + 1617))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1617))];
    pad_temp_shared[((((int)threadIdx.x) + 1666))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1666))];
    pad_temp_shared[((((int)threadIdx.x) + 1715))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1715))];
    pad_temp_shared[((((int)threadIdx.x) + 1764))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1764))];
    pad_temp_shared[((((int)threadIdx.x) + 1813))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1813))];
    pad_temp_shared[((((int)threadIdx.x) + 1862))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1862))];
    pad_temp_shared[((((int)threadIdx.x) + 1911))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1911))];
    pad_temp_shared[((((int)threadIdx.x) + 1960))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 1960))];
    pad_temp_shared[((((int)threadIdx.x) + 2009))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2009))];
    pad_temp_shared[((((int)threadIdx.x) + 2058))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2058))];
    pad_temp_shared[((((int)threadIdx.x) + 2107))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2107))];
    pad_temp_shared[((((int)threadIdx.x) + 2156))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2156))];
    pad_temp_shared[((((int)threadIdx.x) + 2205))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2205))];
    pad_temp_shared[((((int)threadIdx.x) + 2254))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2254))];
    pad_temp_shared[((((int)threadIdx.x) + 2303))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2303))];
    pad_temp_shared[((((int)threadIdx.x) + 2352))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2352))];
    pad_temp_shared[((((int)threadIdx.x) + 2401))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2401))];
    pad_temp_shared[((((int)threadIdx.x) + 2450))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2450))];
    pad_temp_shared[((((int)threadIdx.x) + 2499))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2499))];
    pad_temp_shared[((((int)threadIdx.x) + 2548))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2548))];
    pad_temp_shared[((((int)threadIdx.x) + 2597))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2597))];
    pad_temp_shared[((((int)threadIdx.x) + 2646))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2646))];
    pad_temp_shared[((((int)threadIdx.x) + 2695))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2695))];
    pad_temp_shared[((((int)threadIdx.x) + 2744))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2744))];
    pad_temp_shared[((((int)threadIdx.x) + 2793))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2793))];
    pad_temp_shared[((((int)threadIdx.x) + 2842))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2842))];
    pad_temp_shared[((((int)threadIdx.x) + 2891))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2891))];
    pad_temp_shared[((((int)threadIdx.x) + 2940))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2940))];
    pad_temp_shared[((((int)threadIdx.x) + 2989))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 2989))];
    pad_temp_shared[((((int)threadIdx.x) + 3038))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3038))];
    pad_temp_shared[((((int)threadIdx.x) + 3087))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3087))];
    pad_temp_shared[((((int)threadIdx.x) + 3136))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3136))];
    pad_temp_shared[((((int)threadIdx.x) + 3185))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3185))];
    pad_temp_shared[((((int)threadIdx.x) + 3234))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3234))];
    pad_temp_shared[((((int)threadIdx.x) + 3283))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3283))];
    pad_temp_shared[((((int)threadIdx.x) + 3332))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3332))];
    pad_temp_shared[((((int)threadIdx.x) + 3381))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3381))];
    pad_temp_shared[((((int)threadIdx.x) + 3430))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3430))];
    pad_temp_shared[((((int)threadIdx.x) + 3479))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3479))];
    pad_temp_shared[((((int)threadIdx.x) + 3528))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3528))];
    pad_temp_shared[((((int)threadIdx.x) + 3577))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3577))];
    pad_temp_shared[((((int)threadIdx.x) + 3626))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3626))];
    pad_temp_shared[((((int)threadIdx.x) + 3675))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3675))];
    pad_temp_shared[((((int)threadIdx.x) + 3724))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3724))];
    pad_temp_shared[((((int)threadIdx.x) + 3773))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3773))];
    pad_temp_shared[((((int)threadIdx.x) + 3822))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3822))];
    pad_temp_shared[((((int)threadIdx.x) + 3871))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3871))];
    pad_temp_shared[((((int)threadIdx.x) + 3920))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3920))];
    pad_temp_shared[((((int)threadIdx.x) + 3969))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 3969))];
    pad_temp_shared[((((int)threadIdx.x) + 4018))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4018))];
    pad_temp_shared[((((int)threadIdx.x) + 4067))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4067))];
    pad_temp_shared[((((int)threadIdx.x) + 4116))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4116))];
    pad_temp_shared[((((int)threadIdx.x) + 4165))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4165))];
    pad_temp_shared[((((int)threadIdx.x) + 4214))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4214))];
    pad_temp_shared[((((int)threadIdx.x) + 4263))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4263))];
    pad_temp_shared[((((int)threadIdx.x) + 4312))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4312))];
    pad_temp_shared[((((int)threadIdx.x) + 4361))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4361))];
    pad_temp_shared[((((int)threadIdx.x) + 4410))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4410))];
    pad_temp_shared[((((int)threadIdx.x) + 4459))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4459))];
    pad_temp_shared[((((int)threadIdx.x) + 4508))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4508))];
    pad_temp_shared[((((int)threadIdx.x) + 4557))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4557))];
    pad_temp_shared[((((int)threadIdx.x) + 4606))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4606))];
    pad_temp_shared[((((int)threadIdx.x) + 4655))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4655))];
    pad_temp_shared[((((int)threadIdx.x) + 4704))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4704))];
    pad_temp_shared[((((int)threadIdx.x) + 4753))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4753))];
    pad_temp_shared[((((int)threadIdx.x) + 4802))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4802))];
    pad_temp_shared[((((int)threadIdx.x) + 4851))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4851))];
    pad_temp_shared[((((int)threadIdx.x) + 4900))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4900))];
    pad_temp_shared[((((int)threadIdx.x) + 4949))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4949))];
    pad_temp_shared[((((int)threadIdx.x) + 4998))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 4998))];
    pad_temp_shared[((((int)threadIdx.x) + 5047))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 5047))];
    pad_temp_shared[((((int)threadIdx.x) + 5096))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 5096))];
    if (((int)threadIdx.x) < 39) {
      pad_temp_shared[((((int)threadIdx.x) + 5145))] = data[((((rc_outer_outer * 5184) + ((int)threadIdx.x)) + 5145))];
    }
    kernel_shared[((((int)threadIdx.x) * 6))] = kernel[((((((int)blockIdx.x) * 36864) + (rc_outer_outer * 576)) + (((int)threadIdx.x) * 6)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1))] = kernel[(((((((int)blockIdx.x) * 36864) + (rc_outer_outer * 576)) + (((int)threadIdx.x) * 6)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2))] = kernel[(((((((int)blockIdx.x) * 36864) + (rc_outer_outer * 576)) + (((int)threadIdx.x) * 6)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3))] = kernel[(((((((int)blockIdx.x) * 36864) + (rc_outer_outer * 576)) + (((int)threadIdx.x) * 6)) + 3))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 4))] = kernel[(((((((int)blockIdx.x) * 36864) + (rc_outer_outer * 576)) + (((int)threadIdx.x) * 6)) + 4))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 5))] = kernel[(((((((int)blockIdx.x) * 36864) + (rc_outer_outer * 576)) + (((int)threadIdx.x) * 6)) + 5))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 294))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 98) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 98) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 295))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 98) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 98) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 296))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 98) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 98) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 297))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 99) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 99) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 298))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 99) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 99) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 299))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 99) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 99) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 588))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 196) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 4) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 589))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 196) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 4) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 590))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 196) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 4) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 591))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 197) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 5) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 592))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 197) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 5) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 593))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 197) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 5) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 882))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 294) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 102) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 883))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 294) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 102) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 884))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 294) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 102) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 885))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 295) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 103) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 886))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 295) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 103) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 887))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 295) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 103) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1176))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 392) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 8) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1177))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 392) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 8) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1178))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 392) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 8) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1179))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 393) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 9) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1180))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 393) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 9) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1181))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 393) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 9) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1470))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 490) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 106) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1471))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 490) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 106) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1472))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 490) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 106) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1473))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 491) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 107) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1474))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 491) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 107) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1475))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 491) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 107) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1764))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 588) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 12) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1765))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 588) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 12) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1766))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 588) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 12) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1767))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 589) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 13) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1768))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 589) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 13) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 1769))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 589) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 13) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2058))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 686) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 110) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2059))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 686) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 110) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2060))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 686) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 110) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2061))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 687) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 111) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2062))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 687) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 111) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2063))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 687) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 111) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2352))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 784) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 16) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2353))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 784) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 16) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2354))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 784) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 16) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2355))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 785) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 17) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2356))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 785) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 17) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2357))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 785) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 17) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2646))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 882) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 114) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2647))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 882) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 114) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2648))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 882) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 114) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2649))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 883) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 115) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2650))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 883) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 115) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2651))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 883) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 115) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2940))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 980) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 20) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2941))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 980) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 20) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2942))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 980) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 20) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2943))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 981) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 21) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2944))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 981) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 21) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 2945))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 981) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 21) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3234))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1078) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 118) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3235))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1078) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 118) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3236))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1078) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 118) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3237))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1079) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 119) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3238))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1079) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 119) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3239))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1079) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 119) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3528))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1176) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 24) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3529))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1176) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 24) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3530))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1176) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 24) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3531))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1177) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 25) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3532))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1177) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 25) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3533))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1177) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 25) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3822))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1274) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 122) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3823))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1274) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 122) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3824))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1274) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 122) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3825))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1275) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 123) % 192) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3826))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1275) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 123) % 192) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 3827))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1275) / 192) * 4608)) + (rc_outer_outer * 576)) + ((((((int)threadIdx.x) * 2) + 123) % 192) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 4116))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1372) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 28) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 4117))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1372) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 28) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 4118))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1372) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 28) * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 4119))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1373) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 29) * 3)))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 4120))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1373) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 29) * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.x) * 6) + 4121))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1373) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 29) * 3)) + 2))];
    if (((int)threadIdx.x) < 33) {
      kernel_shared[(((((int)threadIdx.x) * 6) + 4410))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1470) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 126) * 3)))];
    }
    if (((int)threadIdx.x) < 33) {
      kernel_shared[(((((int)threadIdx.x) * 6) + 4411))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1470) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 126) * 3)) + 1))];
    }
    if (((int)threadIdx.x) < 33) {
      kernel_shared[(((((int)threadIdx.x) * 6) + 4412))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1470) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 126) * 3)) + 2))];
    }
    if (((int)threadIdx.x) < 33) {
      kernel_shared[(((((int)threadIdx.x) * 6) + 4413))] = kernel[(((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1471) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 127) * 3)))];
    }
    if (((int)threadIdx.x) < 33) {
      kernel_shared[(((((int)threadIdx.x) * 6) + 4414))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1471) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 127) * 3)) + 1))];
    }
    if (((int)threadIdx.x) < 33) {
      kernel_shared[(((((int)threadIdx.x) * 6) + 4415))] = kernel[((((((((int)blockIdx.x) * 36864) + ((((((int)threadIdx.x) * 2) + 1471) / 192) * 4608)) + (rc_outer_outer * 576)) + (((((int)threadIdx.x) * 2) + 127) * 3)) + 2))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 16; ++rc_outer_inner) {
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)))] * kernel_shared[((rc_outer_inner * 36))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)))] * kernel_shared[(((rc_outer_inner * 36) + 2304))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)))] * kernel_shared[(((rc_outer_inner * 36) + 576))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)))] * kernel_shared[(((rc_outer_inner * 36) + 2880))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)))] * kernel_shared[(((rc_outer_inner * 36) + 1152))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)))] * kernel_shared[(((rc_outer_inner * 36) + 3456))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)))] * kernel_shared[(((rc_outer_inner * 36) + 1728))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)))] * kernel_shared[(((rc_outer_inner * 36) + 4032))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 1))] * kernel_shared[(((rc_outer_inner * 36) + 1))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 1))] * kernel_shared[(((rc_outer_inner * 36) + 2305))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 1))] * kernel_shared[(((rc_outer_inner * 36) + 577))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 1))] * kernel_shared[(((rc_outer_inner * 36) + 2881))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 1))] * kernel_shared[(((rc_outer_inner * 36) + 1153))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 1))] * kernel_shared[(((rc_outer_inner * 36) + 3457))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 1))] * kernel_shared[(((rc_outer_inner * 36) + 1729))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 1))] * kernel_shared[(((rc_outer_inner * 36) + 4033))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 2))] * kernel_shared[(((rc_outer_inner * 36) + 2))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 2))] * kernel_shared[(((rc_outer_inner * 36) + 2306))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 2))] * kernel_shared[(((rc_outer_inner * 36) + 578))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 2))] * kernel_shared[(((rc_outer_inner * 36) + 2882))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 2))] * kernel_shared[(((rc_outer_inner * 36) + 1154))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 2))] * kernel_shared[(((rc_outer_inner * 36) + 3458))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 2))] * kernel_shared[(((rc_outer_inner * 36) + 1730))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 2))] * kernel_shared[(((rc_outer_inner * 36) + 4034))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 81))] * kernel_shared[(((rc_outer_inner * 36) + 9))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 81))] * kernel_shared[(((rc_outer_inner * 36) + 2313))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 81))] * kernel_shared[(((rc_outer_inner * 36) + 585))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 81))] * kernel_shared[(((rc_outer_inner * 36) + 2889))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 81))] * kernel_shared[(((rc_outer_inner * 36) + 1161))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 81))] * kernel_shared[(((rc_outer_inner * 36) + 3465))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 81))] * kernel_shared[(((rc_outer_inner * 36) + 1737))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 81))] * kernel_shared[(((rc_outer_inner * 36) + 4041))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 82))] * kernel_shared[(((rc_outer_inner * 36) + 10))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 82))] * kernel_shared[(((rc_outer_inner * 36) + 2314))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 82))] * kernel_shared[(((rc_outer_inner * 36) + 586))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 82))] * kernel_shared[(((rc_outer_inner * 36) + 2890))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 82))] * kernel_shared[(((rc_outer_inner * 36) + 1162))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 82))] * kernel_shared[(((rc_outer_inner * 36) + 3466))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 82))] * kernel_shared[(((rc_outer_inner * 36) + 1738))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 82))] * kernel_shared[(((rc_outer_inner * 36) + 4042))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 83))] * kernel_shared[(((rc_outer_inner * 36) + 11))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 83))] * kernel_shared[(((rc_outer_inner * 36) + 2315))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 83))] * kernel_shared[(((rc_outer_inner * 36) + 587))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 83))] * kernel_shared[(((rc_outer_inner * 36) + 2891))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 83))] * kernel_shared[(((rc_outer_inner * 36) + 1163))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 83))] * kernel_shared[(((rc_outer_inner * 36) + 3467))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 83))] * kernel_shared[(((rc_outer_inner * 36) + 1739))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 83))] * kernel_shared[(((rc_outer_inner * 36) + 4043))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 162))] * kernel_shared[(((rc_outer_inner * 36) + 18))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 162))] * kernel_shared[(((rc_outer_inner * 36) + 2322))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 162))] * kernel_shared[(((rc_outer_inner * 36) + 594))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 162))] * kernel_shared[(((rc_outer_inner * 36) + 2898))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 162))] * kernel_shared[(((rc_outer_inner * 36) + 1170))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 162))] * kernel_shared[(((rc_outer_inner * 36) + 3474))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 162))] * kernel_shared[(((rc_outer_inner * 36) + 1746))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 162))] * kernel_shared[(((rc_outer_inner * 36) + 4050))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 163))] * kernel_shared[(((rc_outer_inner * 36) + 19))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 163))] * kernel_shared[(((rc_outer_inner * 36) + 2323))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 163))] * kernel_shared[(((rc_outer_inner * 36) + 595))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 163))] * kernel_shared[(((rc_outer_inner * 36) + 2899))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 163))] * kernel_shared[(((rc_outer_inner * 36) + 1171))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 163))] * kernel_shared[(((rc_outer_inner * 36) + 3475))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 163))] * kernel_shared[(((rc_outer_inner * 36) + 1747))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 163))] * kernel_shared[(((rc_outer_inner * 36) + 4051))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 164))] * kernel_shared[(((rc_outer_inner * 36) + 20))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 164))] * kernel_shared[(((rc_outer_inner * 36) + 2324))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 164))] * kernel_shared[(((rc_outer_inner * 36) + 596))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 164))] * kernel_shared[(((rc_outer_inner * 36) + 2900))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 164))] * kernel_shared[(((rc_outer_inner * 36) + 1172))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 164))] * kernel_shared[(((rc_outer_inner * 36) + 3476))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 164))] * kernel_shared[(((rc_outer_inner * 36) + 1748))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 164))] * kernel_shared[(((rc_outer_inner * 36) + 4052))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 243))] * kernel_shared[(((rc_outer_inner * 36) + 27))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 243))] * kernel_shared[(((rc_outer_inner * 36) + 2331))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 243))] * kernel_shared[(((rc_outer_inner * 36) + 603))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 243))] * kernel_shared[(((rc_outer_inner * 36) + 2907))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 243))] * kernel_shared[(((rc_outer_inner * 36) + 1179))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 243))] * kernel_shared[(((rc_outer_inner * 36) + 3483))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 243))] * kernel_shared[(((rc_outer_inner * 36) + 1755))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 243))] * kernel_shared[(((rc_outer_inner * 36) + 4059))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 244))] * kernel_shared[(((rc_outer_inner * 36) + 28))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 244))] * kernel_shared[(((rc_outer_inner * 36) + 2332))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 244))] * kernel_shared[(((rc_outer_inner * 36) + 604))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 244))] * kernel_shared[(((rc_outer_inner * 36) + 2908))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 244))] * kernel_shared[(((rc_outer_inner * 36) + 1180))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 244))] * kernel_shared[(((rc_outer_inner * 36) + 3484))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 244))] * kernel_shared[(((rc_outer_inner * 36) + 1756))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 244))] * kernel_shared[(((rc_outer_inner * 36) + 4060))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 245))] * kernel_shared[(((rc_outer_inner * 36) + 29))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 245))] * kernel_shared[(((rc_outer_inner * 36) + 2333))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 245))] * kernel_shared[(((rc_outer_inner * 36) + 605))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 245))] * kernel_shared[(((rc_outer_inner * 36) + 2909))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 245))] * kernel_shared[(((rc_outer_inner * 36) + 1181))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 245))] * kernel_shared[(((rc_outer_inner * 36) + 3485))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 245))] * kernel_shared[(((rc_outer_inner * 36) + 1757))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 245))] * kernel_shared[(((rc_outer_inner * 36) + 4061))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 9))] * kernel_shared[(((rc_outer_inner * 36) + 3))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 9))] * kernel_shared[(((rc_outer_inner * 36) + 2307))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 9))] * kernel_shared[(((rc_outer_inner * 36) + 579))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 9))] * kernel_shared[(((rc_outer_inner * 36) + 2883))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 9))] * kernel_shared[(((rc_outer_inner * 36) + 1155))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 9))] * kernel_shared[(((rc_outer_inner * 36) + 3459))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 9))] * kernel_shared[(((rc_outer_inner * 36) + 1731))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 9))] * kernel_shared[(((rc_outer_inner * 36) + 4035))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 10))] * kernel_shared[(((rc_outer_inner * 36) + 4))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 10))] * kernel_shared[(((rc_outer_inner * 36) + 2308))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 10))] * kernel_shared[(((rc_outer_inner * 36) + 580))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 10))] * kernel_shared[(((rc_outer_inner * 36) + 2884))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 10))] * kernel_shared[(((rc_outer_inner * 36) + 1156))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 10))] * kernel_shared[(((rc_outer_inner * 36) + 3460))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 10))] * kernel_shared[(((rc_outer_inner * 36) + 1732))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 10))] * kernel_shared[(((rc_outer_inner * 36) + 4036))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 11))] * kernel_shared[(((rc_outer_inner * 36) + 5))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 11))] * kernel_shared[(((rc_outer_inner * 36) + 2309))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 11))] * kernel_shared[(((rc_outer_inner * 36) + 581))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 11))] * kernel_shared[(((rc_outer_inner * 36) + 2885))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 11))] * kernel_shared[(((rc_outer_inner * 36) + 1157))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 11))] * kernel_shared[(((rc_outer_inner * 36) + 3461))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 11))] * kernel_shared[(((rc_outer_inner * 36) + 1733))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 11))] * kernel_shared[(((rc_outer_inner * 36) + 4037))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 90))] * kernel_shared[(((rc_outer_inner * 36) + 12))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 90))] * kernel_shared[(((rc_outer_inner * 36) + 2316))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 90))] * kernel_shared[(((rc_outer_inner * 36) + 588))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 90))] * kernel_shared[(((rc_outer_inner * 36) + 2892))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 90))] * kernel_shared[(((rc_outer_inner * 36) + 1164))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 90))] * kernel_shared[(((rc_outer_inner * 36) + 3468))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 90))] * kernel_shared[(((rc_outer_inner * 36) + 1740))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 90))] * kernel_shared[(((rc_outer_inner * 36) + 4044))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 91))] * kernel_shared[(((rc_outer_inner * 36) + 13))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 91))] * kernel_shared[(((rc_outer_inner * 36) + 2317))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 91))] * kernel_shared[(((rc_outer_inner * 36) + 589))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 91))] * kernel_shared[(((rc_outer_inner * 36) + 2893))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 91))] * kernel_shared[(((rc_outer_inner * 36) + 1165))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 91))] * kernel_shared[(((rc_outer_inner * 36) + 3469))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 91))] * kernel_shared[(((rc_outer_inner * 36) + 1741))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 91))] * kernel_shared[(((rc_outer_inner * 36) + 4045))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 92))] * kernel_shared[(((rc_outer_inner * 36) + 14))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 92))] * kernel_shared[(((rc_outer_inner * 36) + 2318))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 92))] * kernel_shared[(((rc_outer_inner * 36) + 590))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 92))] * kernel_shared[(((rc_outer_inner * 36) + 2894))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 92))] * kernel_shared[(((rc_outer_inner * 36) + 1166))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 92))] * kernel_shared[(((rc_outer_inner * 36) + 3470))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 92))] * kernel_shared[(((rc_outer_inner * 36) + 1742))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 92))] * kernel_shared[(((rc_outer_inner * 36) + 4046))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 171))] * kernel_shared[(((rc_outer_inner * 36) + 21))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 171))] * kernel_shared[(((rc_outer_inner * 36) + 2325))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 171))] * kernel_shared[(((rc_outer_inner * 36) + 597))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 171))] * kernel_shared[(((rc_outer_inner * 36) + 2901))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 171))] * kernel_shared[(((rc_outer_inner * 36) + 1173))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 171))] * kernel_shared[(((rc_outer_inner * 36) + 3477))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 171))] * kernel_shared[(((rc_outer_inner * 36) + 1749))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 171))] * kernel_shared[(((rc_outer_inner * 36) + 4053))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 172))] * kernel_shared[(((rc_outer_inner * 36) + 22))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 172))] * kernel_shared[(((rc_outer_inner * 36) + 2326))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 172))] * kernel_shared[(((rc_outer_inner * 36) + 598))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 172))] * kernel_shared[(((rc_outer_inner * 36) + 2902))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 172))] * kernel_shared[(((rc_outer_inner * 36) + 1174))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 172))] * kernel_shared[(((rc_outer_inner * 36) + 3478))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 172))] * kernel_shared[(((rc_outer_inner * 36) + 1750))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 172))] * kernel_shared[(((rc_outer_inner * 36) + 4054))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 173))] * kernel_shared[(((rc_outer_inner * 36) + 23))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 173))] * kernel_shared[(((rc_outer_inner * 36) + 2327))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 173))] * kernel_shared[(((rc_outer_inner * 36) + 599))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 173))] * kernel_shared[(((rc_outer_inner * 36) + 2903))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 173))] * kernel_shared[(((rc_outer_inner * 36) + 1175))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 173))] * kernel_shared[(((rc_outer_inner * 36) + 3479))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 173))] * kernel_shared[(((rc_outer_inner * 36) + 1751))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 173))] * kernel_shared[(((rc_outer_inner * 36) + 4055))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 252))] * kernel_shared[(((rc_outer_inner * 36) + 30))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 252))] * kernel_shared[(((rc_outer_inner * 36) + 2334))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 252))] * kernel_shared[(((rc_outer_inner * 36) + 606))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 252))] * kernel_shared[(((rc_outer_inner * 36) + 2910))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 252))] * kernel_shared[(((rc_outer_inner * 36) + 1182))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 252))] * kernel_shared[(((rc_outer_inner * 36) + 3486))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 252))] * kernel_shared[(((rc_outer_inner * 36) + 1758))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 252))] * kernel_shared[(((rc_outer_inner * 36) + 4062))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 253))] * kernel_shared[(((rc_outer_inner * 36) + 31))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 253))] * kernel_shared[(((rc_outer_inner * 36) + 2335))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 253))] * kernel_shared[(((rc_outer_inner * 36) + 607))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 253))] * kernel_shared[(((rc_outer_inner * 36) + 2911))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 253))] * kernel_shared[(((rc_outer_inner * 36) + 1183))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 253))] * kernel_shared[(((rc_outer_inner * 36) + 3487))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 253))] * kernel_shared[(((rc_outer_inner * 36) + 1759))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 253))] * kernel_shared[(((rc_outer_inner * 36) + 4063))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 254))] * kernel_shared[(((rc_outer_inner * 36) + 32))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 254))] * kernel_shared[(((rc_outer_inner * 36) + 2336))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 254))] * kernel_shared[(((rc_outer_inner * 36) + 608))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 254))] * kernel_shared[(((rc_outer_inner * 36) + 2912))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 254))] * kernel_shared[(((rc_outer_inner * 36) + 1184))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 254))] * kernel_shared[(((rc_outer_inner * 36) + 3488))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 254))] * kernel_shared[(((rc_outer_inner * 36) + 1760))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 254))] * kernel_shared[(((rc_outer_inner * 36) + 4064))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 18))] * kernel_shared[(((rc_outer_inner * 36) + 6))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 18))] * kernel_shared[(((rc_outer_inner * 36) + 2310))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 18))] * kernel_shared[(((rc_outer_inner * 36) + 582))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 18))] * kernel_shared[(((rc_outer_inner * 36) + 2886))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 18))] * kernel_shared[(((rc_outer_inner * 36) + 1158))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 18))] * kernel_shared[(((rc_outer_inner * 36) + 3462))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 18))] * kernel_shared[(((rc_outer_inner * 36) + 1734))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 18))] * kernel_shared[(((rc_outer_inner * 36) + 4038))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 19))] * kernel_shared[(((rc_outer_inner * 36) + 7))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 19))] * kernel_shared[(((rc_outer_inner * 36) + 2311))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 19))] * kernel_shared[(((rc_outer_inner * 36) + 583))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 19))] * kernel_shared[(((rc_outer_inner * 36) + 2887))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 19))] * kernel_shared[(((rc_outer_inner * 36) + 1159))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 19))] * kernel_shared[(((rc_outer_inner * 36) + 3463))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 19))] * kernel_shared[(((rc_outer_inner * 36) + 1735))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 19))] * kernel_shared[(((rc_outer_inner * 36) + 4039))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 20))] * kernel_shared[(((rc_outer_inner * 36) + 8))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 20))] * kernel_shared[(((rc_outer_inner * 36) + 2312))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 20))] * kernel_shared[(((rc_outer_inner * 36) + 584))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 20))] * kernel_shared[(((rc_outer_inner * 36) + 2888))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 20))] * kernel_shared[(((rc_outer_inner * 36) + 1160))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 20))] * kernel_shared[(((rc_outer_inner * 36) + 3464))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 20))] * kernel_shared[(((rc_outer_inner * 36) + 1736))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 20))] * kernel_shared[(((rc_outer_inner * 36) + 4040))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 99))] * kernel_shared[(((rc_outer_inner * 36) + 15))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 99))] * kernel_shared[(((rc_outer_inner * 36) + 2319))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 99))] * kernel_shared[(((rc_outer_inner * 36) + 591))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 99))] * kernel_shared[(((rc_outer_inner * 36) + 2895))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 99))] * kernel_shared[(((rc_outer_inner * 36) + 1167))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 99))] * kernel_shared[(((rc_outer_inner * 36) + 3471))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 99))] * kernel_shared[(((rc_outer_inner * 36) + 1743))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 99))] * kernel_shared[(((rc_outer_inner * 36) + 4047))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 100))] * kernel_shared[(((rc_outer_inner * 36) + 16))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 100))] * kernel_shared[(((rc_outer_inner * 36) + 2320))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 100))] * kernel_shared[(((rc_outer_inner * 36) + 592))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 100))] * kernel_shared[(((rc_outer_inner * 36) + 2896))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 100))] * kernel_shared[(((rc_outer_inner * 36) + 1168))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 100))] * kernel_shared[(((rc_outer_inner * 36) + 3472))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 100))] * kernel_shared[(((rc_outer_inner * 36) + 1744))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 100))] * kernel_shared[(((rc_outer_inner * 36) + 4048))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 101))] * kernel_shared[(((rc_outer_inner * 36) + 17))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 101))] * kernel_shared[(((rc_outer_inner * 36) + 2321))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 101))] * kernel_shared[(((rc_outer_inner * 36) + 593))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 101))] * kernel_shared[(((rc_outer_inner * 36) + 2897))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 101))] * kernel_shared[(((rc_outer_inner * 36) + 1169))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 101))] * kernel_shared[(((rc_outer_inner * 36) + 3473))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 101))] * kernel_shared[(((rc_outer_inner * 36) + 1745))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 101))] * kernel_shared[(((rc_outer_inner * 36) + 4049))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 180))] * kernel_shared[(((rc_outer_inner * 36) + 24))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 180))] * kernel_shared[(((rc_outer_inner * 36) + 2328))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 180))] * kernel_shared[(((rc_outer_inner * 36) + 600))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 180))] * kernel_shared[(((rc_outer_inner * 36) + 2904))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 180))] * kernel_shared[(((rc_outer_inner * 36) + 1176))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 180))] * kernel_shared[(((rc_outer_inner * 36) + 3480))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 180))] * kernel_shared[(((rc_outer_inner * 36) + 1752))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 180))] * kernel_shared[(((rc_outer_inner * 36) + 4056))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 181))] * kernel_shared[(((rc_outer_inner * 36) + 25))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 181))] * kernel_shared[(((rc_outer_inner * 36) + 2329))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 181))] * kernel_shared[(((rc_outer_inner * 36) + 601))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 181))] * kernel_shared[(((rc_outer_inner * 36) + 2905))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 181))] * kernel_shared[(((rc_outer_inner * 36) + 1177))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 181))] * kernel_shared[(((rc_outer_inner * 36) + 3481))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 181))] * kernel_shared[(((rc_outer_inner * 36) + 1753))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 181))] * kernel_shared[(((rc_outer_inner * 36) + 4057))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 182))] * kernel_shared[(((rc_outer_inner * 36) + 26))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 182))] * kernel_shared[(((rc_outer_inner * 36) + 2330))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 182))] * kernel_shared[(((rc_outer_inner * 36) + 602))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 182))] * kernel_shared[(((rc_outer_inner * 36) + 2906))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 182))] * kernel_shared[(((rc_outer_inner * 36) + 1178))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 182))] * kernel_shared[(((rc_outer_inner * 36) + 3482))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 182))] * kernel_shared[(((rc_outer_inner * 36) + 1754))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 182))] * kernel_shared[(((rc_outer_inner * 36) + 4058))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 261))] * kernel_shared[(((rc_outer_inner * 36) + 33))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 261))] * kernel_shared[(((rc_outer_inner * 36) + 2337))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 261))] * kernel_shared[(((rc_outer_inner * 36) + 609))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 261))] * kernel_shared[(((rc_outer_inner * 36) + 2913))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 261))] * kernel_shared[(((rc_outer_inner * 36) + 1185))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 261))] * kernel_shared[(((rc_outer_inner * 36) + 3489))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 261))] * kernel_shared[(((rc_outer_inner * 36) + 1761))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 261))] * kernel_shared[(((rc_outer_inner * 36) + 4065))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 262))] * kernel_shared[(((rc_outer_inner * 36) + 34))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 262))] * kernel_shared[(((rc_outer_inner * 36) + 2338))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 262))] * kernel_shared[(((rc_outer_inner * 36) + 610))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 262))] * kernel_shared[(((rc_outer_inner * 36) + 2914))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 262))] * kernel_shared[(((rc_outer_inner * 36) + 1186))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 262))] * kernel_shared[(((rc_outer_inner * 36) + 3490))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 262))] * kernel_shared[(((rc_outer_inner * 36) + 1762))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 262))] * kernel_shared[(((rc_outer_inner * 36) + 4066))]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 263))] * kernel_shared[(((rc_outer_inner * 36) + 35))]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 263))] * kernel_shared[(((rc_outer_inner * 36) + 2339))]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 263))] * kernel_shared[(((rc_outer_inner * 36) + 611))]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 263))] * kernel_shared[(((rc_outer_inner * 36) + 2915))]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 263))] * kernel_shared[(((rc_outer_inner * 36) + 1187))]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 263))] * kernel_shared[(((rc_outer_inner * 36) + 3491))]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 263))] * kernel_shared[(((rc_outer_inner * 36) + 1763))]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(((((rc_outer_inner * 324) + ((((int)threadIdx.x) / 7) * 9)) + (((int)threadIdx.x) % 7)) + 263))] * kernel_shared[(((rc_outer_inner * 36) + 4067))]));
    }
  }
  for (int ff_inner = 0; ff_inner < 4; ++ff_inner) {
    compute[((((((int)blockIdx.x) * 392) + (ff_inner * 49)) + ((int)threadIdx.x)))] = compute_local[(ff_inner)];
    compute[(((((((int)blockIdx.x) * 392) + (ff_inner * 49)) + ((int)threadIdx.x)) + 196))] = compute_local[((ff_inner + 4))];
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
                    
dim3 size_grid(64,1,1);

dim3 size_block(49,1,1);
 
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
            