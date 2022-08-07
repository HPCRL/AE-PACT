
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            

            
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[17];
  __shared__ float pad_temp_shared[272];
  __shared__ float kernel_shared[2048];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  compute_local[(8)] = 0.000000e+00f;
  compute_local[(9)] = 0.000000e+00f;
  compute_local[(10)] = 0.000000e+00f;
  compute_local[(11)] = 0.000000e+00f;
  compute_local[(12)] = 0.000000e+00f;
  compute_local[(13)] = 0.000000e+00f;
  compute_local[(14)] = 0.000000e+00f;
  compute_local[(15)] = 0.000000e+00f;
  compute_local[(16)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[((((int)threadIdx.x) * 2))] = data[(((((rc_outer_outer * 4624) + (((((int)threadIdx.x) * 2) / 17) * 289)) + ((((int)blockIdx.x) % 17) * 17)) + ((((int)threadIdx.x) * 2) % 17)))];
    pad_temp_shared[(((((int)threadIdx.x) * 2) + 1))] = data[(((((rc_outer_outer * 4624) + ((((((int)threadIdx.x) * 2) + 1) / 17) * 289)) + ((((int)blockIdx.x) % 17) * 17)) + (((((int)threadIdx.x) * 2) + 1) % 17)))];
    if (((int)threadIdx.x) < 8) {
      pad_temp_shared[(((((int)threadIdx.x) * 2) + 256))] = data[(((((rc_outer_outer * 4624) + ((((((int)threadIdx.x) * 2) + 256) / 17) * 289)) + ((((int)blockIdx.x) % 17) * 17)) + ((((int)threadIdx.x) * 2) + 1)))];
    }
    if (((int)threadIdx.x) < 8) {
      pad_temp_shared[(((((int)threadIdx.x) * 2) + 257))] = data[(((((rc_outer_outer * 4624) + ((((((int)threadIdx.x) * 2) + 257) / 17) * 289)) + ((((int)blockIdx.x) % 17) * 17)) + ((((int)threadIdx.x) * 2) + 2)))];
    }
      ((float2*)(kernel_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(kernel + ((((((((int)blockIdx.x) / 17) * 131072) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 256))))[0] = ((float2*)(kernel + (((((((((int)blockIdx.x) / 17) * 131072) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 16384))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 512))))[0] = ((float2*)(kernel + (((((((((int)blockIdx.x) / 17) * 131072) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 32768))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 768))))[0] = ((float2*)(kernel + (((((((((int)blockIdx.x) / 17) * 131072) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 49152))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 1024))))[0] = ((float2*)(kernel + (((((((((int)blockIdx.x) / 17) * 131072) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 65536))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 1280))))[0] = ((float2*)(kernel + (((((((((int)blockIdx.x) / 17) * 131072) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 81920))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 1536))))[0] = ((float2*)(kernel + (((((((((int)blockIdx.x) / 17) * 131072) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 98304))))[0];
      ((float2*)(kernel_shared + (((((int)threadIdx.x) * 2) + 1792))))[0] = ((float2*)(kernel + (((((((((int)blockIdx.x) / 17) * 131072) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) & 7) * 2)) + 114688))))[0];
    __syncthreads();
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(0)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(1)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(2)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(3)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(4)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(5)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(6)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(7)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(8)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(9)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(10)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(11)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(12)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(13)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(14)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(15)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(16)] * kernel_shared[((((int)threadIdx.x) * 16))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(17)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(18)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(19)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(20)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(21)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(22)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(23)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(24)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(25)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(26)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(27)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(28)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(29)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(30)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(31)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(32)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(33)] * kernel_shared[(((((int)threadIdx.x) * 16) + 1))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(34)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(35)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(36)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(37)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(38)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(39)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(40)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(41)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(42)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(43)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(44)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(45)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(46)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(47)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(48)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(49)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(50)] * kernel_shared[(((((int)threadIdx.x) * 16) + 2))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(51)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(52)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(53)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(54)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(55)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(56)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(57)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(58)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(59)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(60)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(61)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(62)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(63)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(64)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(65)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(66)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(67)] * kernel_shared[(((((int)threadIdx.x) * 16) + 3))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(68)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(69)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(70)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(71)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(72)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(73)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(74)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(75)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(76)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(77)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(78)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(79)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(80)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(81)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(82)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(83)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(84)] * kernel_shared[(((((int)threadIdx.x) * 16) + 4))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(85)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(86)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(87)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(88)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(89)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(90)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(91)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(92)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(93)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(94)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(95)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(96)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(97)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(98)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(99)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(100)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(101)] * kernel_shared[(((((int)threadIdx.x) * 16) + 5))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(102)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(103)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(104)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(105)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(106)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(107)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(108)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(109)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(110)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(111)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(112)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(113)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(114)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(115)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(116)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(117)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(118)] * kernel_shared[(((((int)threadIdx.x) * 16) + 6))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(119)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(120)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(121)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(122)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(123)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(124)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(125)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(126)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(127)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(128)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(129)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(130)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(131)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(132)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(133)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(134)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(135)] * kernel_shared[(((((int)threadIdx.x) * 16) + 7))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(136)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(137)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(138)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(139)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(140)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(141)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(142)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(143)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(144)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(145)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(146)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(147)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(148)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(149)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(150)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(151)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(152)] * kernel_shared[(((((int)threadIdx.x) * 16) + 8))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(153)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(154)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(155)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(156)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(157)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(158)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(159)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(160)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(161)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(162)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(163)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(164)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(165)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(166)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(167)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(168)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(169)] * kernel_shared[(((((int)threadIdx.x) * 16) + 9))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(170)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(171)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(172)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(173)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(174)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(175)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(176)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(177)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(178)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(179)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(180)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(181)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(182)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(183)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(184)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(185)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(186)] * kernel_shared[(((((int)threadIdx.x) * 16) + 10))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(187)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(188)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(189)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(190)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(191)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(192)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(193)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(194)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(195)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(196)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(197)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(198)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(199)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(200)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(201)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(202)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(203)] * kernel_shared[(((((int)threadIdx.x) * 16) + 11))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(204)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(205)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(206)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(207)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(208)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(209)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(210)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(211)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(212)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(213)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(214)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(215)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(216)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(217)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(218)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(219)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(220)] * kernel_shared[(((((int)threadIdx.x) * 16) + 12))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(221)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(222)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(223)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(224)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(225)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(226)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(227)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(228)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(229)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(230)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(231)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(232)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(233)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(234)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(235)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(236)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(237)] * kernel_shared[(((((int)threadIdx.x) * 16) + 13))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(238)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(239)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(240)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(241)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(242)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(243)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(244)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(245)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(246)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(247)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(248)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(249)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(250)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(251)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(252)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(253)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(254)] * kernel_shared[(((((int)threadIdx.x) * 16) + 14))]));
    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared[(255)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared[(256)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared[(257)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared[(258)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared[(259)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared[(260)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared[(261)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared[(262)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared[(263)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared[(264)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared[(265)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared[(266)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared[(267)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared[(268)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared[(269)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared[(270)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
    compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared[(271)] * kernel_shared[(((((int)threadIdx.x) * 16) + 15))]));
  }
  for (int xx_inner = 0; xx_inner < 17; ++xx_inner) {
    compute[((((((((int)blockIdx.x) / 17) * 36992) + (((int)threadIdx.x) * 289)) + ((((int)blockIdx.x) % 17) * 17)) + xx_inner))] = compute_local[(xx_inner)];
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
                    
dim3 size_grid(68,1,1);

dim3 size_block(128,1,1);
 
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
            