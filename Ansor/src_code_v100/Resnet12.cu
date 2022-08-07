
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[2];
  __shared__ float pad_temp_shared[1296];
  __shared__ float kernel_shared[288];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[(((int)threadIdx.x))] = data[(((rc_outer_outer * 1296) + ((int)threadIdx.x)))];
    pad_temp_shared[((((int)threadIdx.x) + 49))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 49))];
    pad_temp_shared[((((int)threadIdx.x) + 98))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 98))];
    pad_temp_shared[((((int)threadIdx.x) + 147))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 147))];
    pad_temp_shared[((((int)threadIdx.x) + 196))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 196))];
    pad_temp_shared[((((int)threadIdx.x) + 245))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 245))];
    pad_temp_shared[((((int)threadIdx.x) + 294))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 294))];
    pad_temp_shared[((((int)threadIdx.x) + 343))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 343))];
    pad_temp_shared[((((int)threadIdx.x) + 392))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 392))];
    pad_temp_shared[((((int)threadIdx.x) + 441))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 441))];
    pad_temp_shared[((((int)threadIdx.x) + 490))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 490))];
    pad_temp_shared[((((int)threadIdx.x) + 539))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 539))];
    pad_temp_shared[((((int)threadIdx.x) + 588))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 588))];
    pad_temp_shared[((((int)threadIdx.x) + 637))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 637))];
    pad_temp_shared[((((int)threadIdx.x) + 686))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 686))];
    pad_temp_shared[((((int)threadIdx.x) + 735))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 735))];
    pad_temp_shared[((((int)threadIdx.x) + 784))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 784))];
    pad_temp_shared[((((int)threadIdx.x) + 833))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 833))];
    pad_temp_shared[((((int)threadIdx.x) + 882))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 882))];
    pad_temp_shared[((((int)threadIdx.x) + 931))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 931))];
    pad_temp_shared[((((int)threadIdx.x) + 980))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 980))];
    pad_temp_shared[((((int)threadIdx.x) + 1029))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 1029))];
    pad_temp_shared[((((int)threadIdx.x) + 1078))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 1078))];
    pad_temp_shared[((((int)threadIdx.x) + 1127))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 1127))];
    pad_temp_shared[((((int)threadIdx.x) + 1176))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 1176))];
    pad_temp_shared[((((int)threadIdx.x) + 1225))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 1225))];
    if (((int)threadIdx.x) < 22) {
      pad_temp_shared[((((int)threadIdx.x) + 1274))] = data[((((rc_outer_outer * 1296) + ((int)threadIdx.x)) + 1274))];
    }
    kernel_shared[(((int)threadIdx.x))] = kernel[((((((int)blockIdx.x) * 9216) + (rc_outer_outer * 144)) + ((int)threadIdx.x)))];
    kernel_shared[((((int)threadIdx.x) + 49))] = kernel[(((((((int)blockIdx.x) * 9216) + (rc_outer_outer * 144)) + ((int)threadIdx.x)) + 49))];
    kernel_shared[((((int)threadIdx.x) + 98))] = kernel[(((((((int)blockIdx.x) * 9216) + (((((int)threadIdx.x) + 98) / 144) * 4608)) + (rc_outer_outer * 144)) + ((((int)threadIdx.x) + 98) % 144)))];
    kernel_shared[((((int)threadIdx.x) + 147))] = kernel[(((((((int)blockIdx.x) * 9216) + (((((int)threadIdx.x) + 147) / 144) * 4608)) + (rc_outer_outer * 144)) + (((int)threadIdx.x) + 3)))];
    kernel_shared[((((int)threadIdx.x) + 196))] = kernel[(((((((int)blockIdx.x) * 9216) + (((((int)threadIdx.x) + 196) / 144) * 4608)) + (rc_outer_outer * 144)) + (((int)threadIdx.x) + 52)))];
    if (((int)threadIdx.x) < 43) {
      kernel_shared[((((int)threadIdx.x) + 245))] = kernel[(((((((int)blockIdx.x) * 9216) + (((((int)threadIdx.x) + 245) / 144) * 4608)) + (rc_outer_outer * 144)) + (((int)threadIdx.x) + 101)))];
    }
    __syncthreads();
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)))] * kernel_shared[(0)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)))] * kernel_shared[(144)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 9))] * kernel_shared[(3)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 9))] * kernel_shared[(147)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 18))] * kernel_shared[(6)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 18))] * kernel_shared[(150)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 81))] * kernel_shared[(9)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 81))] * kernel_shared[(153)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 90))] * kernel_shared[(12)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 90))] * kernel_shared[(156)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 99))] * kernel_shared[(15)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 99))] * kernel_shared[(159)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 162))] * kernel_shared[(18)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 162))] * kernel_shared[(162)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 171))] * kernel_shared[(21)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 171))] * kernel_shared[(165)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 180))] * kernel_shared[(24)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 180))] * kernel_shared[(168)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 243))] * kernel_shared[(27)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 243))] * kernel_shared[(171)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 252))] * kernel_shared[(30)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 252))] * kernel_shared[(174)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 261))] * kernel_shared[(33)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 261))] * kernel_shared[(177)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 324))] * kernel_shared[(36)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 324))] * kernel_shared[(180)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 333))] * kernel_shared[(39)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 333))] * kernel_shared[(183)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 342))] * kernel_shared[(42)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 342))] * kernel_shared[(186)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 405))] * kernel_shared[(45)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 405))] * kernel_shared[(189)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 414))] * kernel_shared[(48)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 414))] * kernel_shared[(192)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 423))] * kernel_shared[(51)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 423))] * kernel_shared[(195)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 486))] * kernel_shared[(54)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 486))] * kernel_shared[(198)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 495))] * kernel_shared[(57)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 495))] * kernel_shared[(201)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 504))] * kernel_shared[(60)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 504))] * kernel_shared[(204)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 567))] * kernel_shared[(63)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 567))] * kernel_shared[(207)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 576))] * kernel_shared[(66)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 576))] * kernel_shared[(210)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 585))] * kernel_shared[(69)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 585))] * kernel_shared[(213)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1))] * kernel_shared[(1)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1))] * kernel_shared[(145)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 10))] * kernel_shared[(4)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 10))] * kernel_shared[(148)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 19))] * kernel_shared[(7)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 19))] * kernel_shared[(151)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 82))] * kernel_shared[(10)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 82))] * kernel_shared[(154)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 91))] * kernel_shared[(13)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 91))] * kernel_shared[(157)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 100))] * kernel_shared[(16)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 100))] * kernel_shared[(160)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 163))] * kernel_shared[(19)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 163))] * kernel_shared[(163)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 172))] * kernel_shared[(22)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 172))] * kernel_shared[(166)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 181))] * kernel_shared[(25)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 181))] * kernel_shared[(169)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 244))] * kernel_shared[(28)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 244))] * kernel_shared[(172)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 253))] * kernel_shared[(31)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 253))] * kernel_shared[(175)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 262))] * kernel_shared[(34)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 262))] * kernel_shared[(178)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 325))] * kernel_shared[(37)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 325))] * kernel_shared[(181)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 334))] * kernel_shared[(40)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 334))] * kernel_shared[(184)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 343))] * kernel_shared[(43)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 343))] * kernel_shared[(187)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 406))] * kernel_shared[(46)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 406))] * kernel_shared[(190)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 415))] * kernel_shared[(49)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 415))] * kernel_shared[(193)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 424))] * kernel_shared[(52)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 424))] * kernel_shared[(196)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 487))] * kernel_shared[(55)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 487))] * kernel_shared[(199)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 496))] * kernel_shared[(58)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 496))] * kernel_shared[(202)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 505))] * kernel_shared[(61)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 505))] * kernel_shared[(205)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 568))] * kernel_shared[(64)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 568))] * kernel_shared[(208)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 577))] * kernel_shared[(67)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 577))] * kernel_shared[(211)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 586))] * kernel_shared[(70)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 586))] * kernel_shared[(214)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 2))] * kernel_shared[(2)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 2))] * kernel_shared[(146)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 11))] * kernel_shared[(5)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 11))] * kernel_shared[(149)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 20))] * kernel_shared[(8)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 20))] * kernel_shared[(152)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 83))] * kernel_shared[(11)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 83))] * kernel_shared[(155)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 92))] * kernel_shared[(14)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 92))] * kernel_shared[(158)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 101))] * kernel_shared[(17)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 101))] * kernel_shared[(161)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 164))] * kernel_shared[(20)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 164))] * kernel_shared[(164)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 173))] * kernel_shared[(23)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 173))] * kernel_shared[(167)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 182))] * kernel_shared[(26)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 182))] * kernel_shared[(170)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 245))] * kernel_shared[(29)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 245))] * kernel_shared[(173)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 254))] * kernel_shared[(32)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 254))] * kernel_shared[(176)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 263))] * kernel_shared[(35)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 263))] * kernel_shared[(179)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 326))] * kernel_shared[(38)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 326))] * kernel_shared[(182)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 335))] * kernel_shared[(41)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 335))] * kernel_shared[(185)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 344))] * kernel_shared[(44)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 344))] * kernel_shared[(188)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 407))] * kernel_shared[(47)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 407))] * kernel_shared[(191)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 416))] * kernel_shared[(50)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 416))] * kernel_shared[(194)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 425))] * kernel_shared[(53)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 425))] * kernel_shared[(197)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 488))] * kernel_shared[(56)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 488))] * kernel_shared[(200)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 497))] * kernel_shared[(59)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 497))] * kernel_shared[(203)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 506))] * kernel_shared[(62)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 506))] * kernel_shared[(206)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 569))] * kernel_shared[(65)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 569))] * kernel_shared[(209)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 578))] * kernel_shared[(68)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 578))] * kernel_shared[(212)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 587))] * kernel_shared[(71)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 587))] * kernel_shared[(215)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 648))] * kernel_shared[(72)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 648))] * kernel_shared[(216)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 657))] * kernel_shared[(75)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 657))] * kernel_shared[(219)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 666))] * kernel_shared[(78)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 666))] * kernel_shared[(222)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 729))] * kernel_shared[(81)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 729))] * kernel_shared[(225)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 738))] * kernel_shared[(84)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 738))] * kernel_shared[(228)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 747))] * kernel_shared[(87)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 747))] * kernel_shared[(231)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 810))] * kernel_shared[(90)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 810))] * kernel_shared[(234)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 819))] * kernel_shared[(93)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 819))] * kernel_shared[(237)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 828))] * kernel_shared[(96)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 828))] * kernel_shared[(240)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 891))] * kernel_shared[(99)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 891))] * kernel_shared[(243)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 900))] * kernel_shared[(102)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 900))] * kernel_shared[(246)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 909))] * kernel_shared[(105)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 909))] * kernel_shared[(249)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 972))] * kernel_shared[(108)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 972))] * kernel_shared[(252)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 981))] * kernel_shared[(111)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 981))] * kernel_shared[(255)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 990))] * kernel_shared[(114)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 990))] * kernel_shared[(258)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1053))] * kernel_shared[(117)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1053))] * kernel_shared[(261)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1062))] * kernel_shared[(120)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1062))] * kernel_shared[(264)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1071))] * kernel_shared[(123)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1071))] * kernel_shared[(267)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1134))] * kernel_shared[(126)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1134))] * kernel_shared[(270)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1143))] * kernel_shared[(129)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1143))] * kernel_shared[(273)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1152))] * kernel_shared[(132)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1152))] * kernel_shared[(276)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1215))] * kernel_shared[(135)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1215))] * kernel_shared[(279)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1224))] * kernel_shared[(138)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1224))] * kernel_shared[(282)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1233))] * kernel_shared[(141)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1233))] * kernel_shared[(285)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 649))] * kernel_shared[(73)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 649))] * kernel_shared[(217)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 658))] * kernel_shared[(76)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 658))] * kernel_shared[(220)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 667))] * kernel_shared[(79)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 667))] * kernel_shared[(223)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 730))] * kernel_shared[(82)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 730))] * kernel_shared[(226)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 739))] * kernel_shared[(85)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 739))] * kernel_shared[(229)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 748))] * kernel_shared[(88)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 748))] * kernel_shared[(232)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 811))] * kernel_shared[(91)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 811))] * kernel_shared[(235)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 820))] * kernel_shared[(94)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 820))] * kernel_shared[(238)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 829))] * kernel_shared[(97)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 829))] * kernel_shared[(241)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 892))] * kernel_shared[(100)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 892))] * kernel_shared[(244)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 901))] * kernel_shared[(103)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 901))] * kernel_shared[(247)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 910))] * kernel_shared[(106)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 910))] * kernel_shared[(250)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 973))] * kernel_shared[(109)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 973))] * kernel_shared[(253)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 982))] * kernel_shared[(112)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 982))] * kernel_shared[(256)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 991))] * kernel_shared[(115)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 991))] * kernel_shared[(259)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1054))] * kernel_shared[(118)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1054))] * kernel_shared[(262)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1063))] * kernel_shared[(121)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1063))] * kernel_shared[(265)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1072))] * kernel_shared[(124)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1072))] * kernel_shared[(268)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1135))] * kernel_shared[(127)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1135))] * kernel_shared[(271)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1144))] * kernel_shared[(130)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1144))] * kernel_shared[(274)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1153))] * kernel_shared[(133)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1153))] * kernel_shared[(277)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1216))] * kernel_shared[(136)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1216))] * kernel_shared[(280)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1225))] * kernel_shared[(139)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1225))] * kernel_shared[(283)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1234))] * kernel_shared[(142)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1234))] * kernel_shared[(286)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 650))] * kernel_shared[(74)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 650))] * kernel_shared[(218)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 659))] * kernel_shared[(77)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 659))] * kernel_shared[(221)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 668))] * kernel_shared[(80)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 668))] * kernel_shared[(224)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 731))] * kernel_shared[(83)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 731))] * kernel_shared[(227)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 740))] * kernel_shared[(86)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 740))] * kernel_shared[(230)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 749))] * kernel_shared[(89)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 749))] * kernel_shared[(233)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 812))] * kernel_shared[(92)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 812))] * kernel_shared[(236)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 821))] * kernel_shared[(95)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 821))] * kernel_shared[(239)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 830))] * kernel_shared[(98)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 830))] * kernel_shared[(242)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 893))] * kernel_shared[(101)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 893))] * kernel_shared[(245)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 902))] * kernel_shared[(104)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 902))] * kernel_shared[(248)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 911))] * kernel_shared[(107)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 911))] * kernel_shared[(251)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 974))] * kernel_shared[(110)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 974))] * kernel_shared[(254)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 983))] * kernel_shared[(113)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 983))] * kernel_shared[(257)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 992))] * kernel_shared[(116)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 992))] * kernel_shared[(260)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1055))] * kernel_shared[(119)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1055))] * kernel_shared[(263)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1064))] * kernel_shared[(122)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1064))] * kernel_shared[(266)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1073))] * kernel_shared[(125)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1073))] * kernel_shared[(269)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1136))] * kernel_shared[(128)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1136))] * kernel_shared[(272)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1145))] * kernel_shared[(131)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1145))] * kernel_shared[(275)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1154))] * kernel_shared[(134)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1154))] * kernel_shared[(278)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1217))] * kernel_shared[(137)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1217))] * kernel_shared[(281)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1226))] * kernel_shared[(140)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1226))] * kernel_shared[(284)]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1235))] * kernel_shared[(143)]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(((((((int)threadIdx.x) / 7) * 9) + (((int)threadIdx.x) % 7)) + 1235))] * kernel_shared[(287)]));
  }
  compute[(((((int)blockIdx.x) * 98) + ((int)threadIdx.x)))] = compute_local[(0)];
  compute[((((((int)blockIdx.x) * 98) + ((int)threadIdx.x)) + 49))] = compute_local[(1)];
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
                    
dim3 size_grid(256,1,1);

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
            