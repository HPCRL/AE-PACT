#include <string.h>
#include <stdlib.h>     /* abs */
#include <math.h>
#include "omp.h"
#include "common.h"

int main(int argc, char *argv[]) {

    int N_B = atoi(argv[1]);
    int N_H = atoi(argv[2]);
    int N_W = atoi(argv[3]);
    int N_F = atoi(argv[4]);
    int N_C = atoi(argv[5]);
    int N_R = atoi(argv[6]);
    int N_S = atoi(argv[7]);
    int strides = atoi(argv[8]);
    int padding = atoi(argv[9]);

    int N_X = ((N_W - N_S + 2 * padding) / strides + 1); /*output x*/
    int N_Y = ((N_H - N_R + 2 * padding) / strides + 1); /*output y*/

    float *Input;
    float *Kernel;
    float *Output;

    int itr = 1;
    generate_input_tensor(N_B, N_C, N_H, N_W, &Input, itr);
    generate_kernel(N_F, N_C, N_R, N_S, &Kernel, itr);
    Output = (TYPE *) malloc(sizeof(TYPE) * N_B * N_F * N_Y * N_X);

    conv_kernel_wrapper(N_B, N_C, N_H, N_W, N_F, N_R, N_S, padding, padding,
                        strides, strides, N_X, N_Y, Input, Kernel, Output, itr);

    return 0;

}
