#include <string.h>
#include <stdlib.h>     /* abs */
#include <math.h>
#include "omp.h"

#if defined(MAP3D)
#include "common3d.h"
#elif defined(NEWSCHEME)
#include "commoninNout.h"
#else
#include "common.h"
#endif


int main() {
    TYPE *Input;
    TYPE *Kernel;
    TYPE *Output, *check_Output;
    int itr = 25;
    generate_input_tensor(N_B, N_C, N_H, N_W, &Input, itr);
    generate_kernel(N_F, N_C, N_R, N_S, &Kernel, itr);
    Output = (TYPE *) malloc(sizeof(TYPE) * N_B * N_F * N_Y * N_X);
    //memset(Output, 0x00, sizeof(TYPE) * N_B * N_F * N_Y * N_X);

    check_Output = (TYPE *) malloc(sizeof(TYPE) * N_B * N_F * N_Y * N_X);
    memset(check_Output, 0x00, sizeof(TYPE) * N_B * N_F * N_Y * N_X);

    conv_kernel_wrapper(Input, Kernel, Output, itr);

    /*correctness check*/
    conv_naive_crsf(Input, Kernel, check_Output);
    check_difference(Output, check_Output, (N_B * N_F * N_Y * N_X));

    return 0;
}
/*with padding calculation*/
void conv_naive_crsf(const TYPE *Input, const TYPE *Kernel, TYPE *Output) {
    for (int n = 0; n < N_B; ++n) {
        for (int f = 0; f < N_F; ++f) {
            for (int y = 0; y < N_Y; ++y) {
                for (int x = 0; x < N_X; ++x) {
                    for (int c = 0; c < N_C; ++c) {
                        for (int r = 0; r < N_R; ++r) {
                            for (int s = 0; s < N_S; ++s) {
                                /*Output[n][k][y][x] += Input[n][c][y*N_StrideV+r][x*StrideH+s] * Kernel[k][c][r][s];*/
                            	if ( (y * StrideH + r) < PaddingH || (y * StrideH + r) > (N_H +PaddingH-1) 
                            		 || (x * StrideW + s) < PaddingW || (x * StrideW + s) > (N_W +PaddingW-1)){
                            		Output[n * N_F * N_Y * N_X + f * N_Y * N_X + y * N_X + x] +=
                                        0 *
                                        Kernel[c * N_R * N_S * N_F + r * N_S * N_F + s * N_F + f];

                            	}else{
                            		Output[n * N_F * N_Y * N_X + f * N_Y * N_X + y * N_X + x] +=
                                        Input[n * N_C * N_H * N_W + c * N_H * N_W + (y * StrideH + r- PaddingH) * N_W + (x * StrideW + s-PaddingW)] *
                                        Kernel[c * N_R * N_S * N_F + r * N_S * N_F + s * N_F + f];
                            	}
                            }
                        }
                    }
                }
            }
        }
    }
}
