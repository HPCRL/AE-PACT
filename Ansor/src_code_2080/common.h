#include <sys/time.h>
#include <iostream>
#include <cmath>
#include <limits>

#ifndef _COMMON_H
#define _COMMON_H

// #define PaddingH 0
// #define PaddingW 0

#define DilationH 1
#define DilationW 1






#define DEBUG_THRESHOLD 1e-4
#define CEIL(a, b)     (((a) + (b) - 1) / (b))

#define TYPE float

#define CHECK(call)                                                            \
{                                                                              \
    const cudaError_t error = call;                                            \
    if (error != cudaSuccess)                                                  \
    {                                                                          \
        fprintf(stderr, "Error: %s:%d, ", __FILE__, __LINE__);                 \
        fprintf(stderr, "code: %d, reason: %s\n", error,                       \
                cudaGetErrorString(error));                                    \
        exit(1);                                                               \
    }                                                                          \
}
#define checkCUDNN(expression)                                               \
{                                                                               \
    const cudnnStatus_t error = expression;                                    \
    if (error != CUDNN_STATUS_SUCCESS)                                         \
    {                                                                          \
        fprintf(stderr, "Error: %s:%d, ", __FILE__, __LINE__);                 \
        fprintf(stderr, "code: %d, reason: %s\n", error,                       \
               cudnnGetErrorString(error));                                    \
        exit(1);                                                               \
    }                                                                          \
}


inline void generate_input_tensor(int NN, int NC, int NH, int NW, TYPE **Input, int itr) {
    srand(time(0));
    int n, c, h, w, i;
    TYPE *I = (TYPE *) malloc(sizeof(TYPE) * NN * NC * NH * NW * itr);
    for (i = 0; i < itr; i++) {
        for (n = 0; n < NN; n++) {
            for (c = 0; c < NC; c++) {
                for (h = 0; h < NH; h++) {
                    for (w = 0; w < NW; w++) {
                        TYPE dr = static_cast <TYPE> (rand()) / static_cast <TYPE> (RAND_MAX);
                        I[i* NN* NC * NH * NW + n * NC * NH * NW + c * NH * NW + h * NW + w] = dr;
                    }
                }
            }
        }
    }
    *Input = I;
}

inline void generate_kernel(int NK, int NC, int NR, int NS, TYPE **Kernel, int itr) {
    srand(time(0));
    int k, c, r, s, i;
    TYPE *Ker = (TYPE *) malloc(sizeof(TYPE) * NK * NC * NR * NS * itr);
    for (i = 0; i < itr; i++) {
        for (k = 0; k < NK; k++) {
            for (c = 0; c < NC; c++) {
                for (r = 0; r < NR; r++) {
                    for (s = 0; s < NS; s++) {
                        TYPE dr = static_cast <TYPE> (rand()) / static_cast <TYPE> (RAND_MAX);
                        Ker[i * NK * NC * NR * NS + k * NC * NR * NS + c * NR * NS + r * NS + s] = dr; //ii++;
                    }
                }
            }
        }
    }
    *Kernel = Ker;
}

void conv_kernel_wrapper(int N_B, int N_C, int N_H, int N_W, int N_F, int N_R, int N_S, int PaddingH, int PaddingW,
                    int StrideH, int StrideW, int N_X, int N_Y, const float *Input, const float *Kernel, float *Output, int itr);
#endif // _COMMON_H

