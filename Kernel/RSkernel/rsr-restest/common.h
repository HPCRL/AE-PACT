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

#define Ox (TILE_X * TILE_Y)    /*tiled output x*/
#define Oy (TILE_F)     /*tiled output y*/
#define N_X   ( (N_W-N_S+2*PaddingW)/StrideW+1 ) /*output x*/
#define N_Y   ( (N_H-N_R+2*PaddingH)/StrideH+1 ) /*output y*/

#define SMEM_Y  (StrideH * (TILE_Y-1) + N_R)
#define SMEM_X  (StrideW * (TILE_X-1) + N_S)

#define TB_X   (Ox / REG_X)
#define TB_Y   (Oy / REG_Y)


#define DEBUG_THRESHOLD 1e-4
#define CEIL(a, b)     (((a) + (b) - 1) / (b))

#define TYPE float // CHANGE HERE

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

inline double seconds() {
    struct timeval tp;
    struct timezone tzp;
    int i = gettimeofday(&tp, &tzp);
    return ((double) tp.tv_sec + (double) tp.tv_usec * 1.e-6);
}

inline void generate_input_tensor(int NN, int NC, int NH, int NW, TYPE **Input, int itr) {
    srand(time(0));
    int n, c, h, w, i;
    TYPE ii = -1.2;
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
    TYPE ii = 1.1;
    TYPE *Ker = (TYPE *) malloc(sizeof(TYPE) * NK * NC * NR * NS * itr);
    for (i = 0; i < itr; i++) {
        for (k = 0; k < NK; k++) {
            for (c = 0; c < NC; c++) {
                for (r = 0; r < NR; r++) {
                    for (s = 0; s < NS; s++) {
                        TYPE dr = static_cast <TYPE> (rand()) / static_cast <TYPE> (RAND_MAX);
                        Ker[i * NK * NC * NR * NS + k * NC * NR * NS + c * NR * NS + r * NS + s] = dr;
                    }
                }
            }
        }
    }
    *Kernel = Ker;
}

inline int32_t ulpsDistance(const TYPE a, const TYPE b) {
    // Save work if the TYPEs are equal.
    // Also handles +0 == -0
    if (a == b) return 0;

    const auto max =
            std::numeric_limits<int32_t>::max();

    // Max distance for NaN
    if (isnan(a) || isnan(b)) return max;

    // If one's infinite and they're not equal, max distance.
    if (isinf(a) || isinf(b)) return max;

    int32_t ia, ib;
    memcpy(&ia, &a, sizeof(TYPE));
    memcpy(&ib, &b, sizeof(TYPE));

    // Don't compare differently-signed TYPEs.
    if ((ia < 0) != (ib < 0)) return max;

    // Return the absolute value of the distance in ULPs.
    int32_t distance = ia - ib;
    if (distance < 0) distance = -distance;
    return distance;
}

/*Jinsung's check correctness*/
inline int check_difference(TYPE *output_gpu, TYPE *output_cpu, int size_output) {
    printf("======================================= Correctness Check ==========================================\n");
    TYPE epsilon = DEBUG_THRESHOLD;
    int diff = 0;
    int same = 0;
    int i;
    for (i = 0; i < size_output; i++) {
        //TYPE check = abs(output_cpu[i] - output_gpu[i]);
        TYPE check = (output_cpu[i] - output_gpu[i] < 0) ? (-1 * (output_cpu[i] - output_gpu[i])) : (output_cpu[i] -
                                                                                                      output_gpu[i]);
        if ((ulpsDistance(output_cpu[i], output_gpu[i])) > 50) { // Change this a - b 167
            diff++;
            //printf("Index: %5d, (Host) %10.7f, (Dev.) %10.7f >> (Diff.) %10.7f\n", i, output_cpu[i], output_gpu[i],check);
            // printf("Index: %5d, (Host) %d, (Dev.) %d >> (Diff.) %d\n", i, output_cpu[i], output_gpu[i],
            //        check);
        } else {
            same++;
        }
    }

    printf(" >>> PASSED: %'10d among %'10d in t3\n", same, size_output);
    printf(" >>> ERROR : %'10d among %'10d in t3\n", diff, size_output);
    printf("====================================================================================================\n");

    if (diff > 0) {
        return 1;
    }
    return 0;
}

void conv_naive_fcrs(const TYPE *Input, const TYPE *Kernel, TYPE *Output);
void conv_naive_crsf(const TYPE *Input, const TYPE *Kernel, TYPE *Output);
void conv_naive_new(const TYPE *Input, const TYPE *Kernel, TYPE *Output);
//int check_difference(TYPE *output_gpu, TYPE *output_cpu, TYPE size_output);

void conv_kernel_wrapper(const TYPE *Input, const TYPE *Kernel, TYPE *Output, int itr);
#endif // _COMMON_H

