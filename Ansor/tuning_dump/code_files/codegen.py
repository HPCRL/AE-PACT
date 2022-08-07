import os

def dump(path):
    for file in os.listdir(path):
        if file.endswith(".code"):
            filename = os.path.splitext(file)[0]
            print("handling ", filename)
            codefile = open(file, 'r')
            Lines = codefile.readlines()
            code_start = False
            code_segment = ""
            grid_config = ""
            block_config = ""
            i = 0
            while i < (len(Lines)):
                line = Lines[i]
                print(line)
                if code_start:
                    while "******9********" not in line:
                        code_segment = code_segment + line
                        i = i+1
                        line = Lines[i]
                        print(line)
                    code_start = False
                if "**********6*************" in line:
                    code_start = code_start ^ True
                if "grid=" in line and "block=" in line \
                        and not grid_config and not block_config:
                    first_assign = line.find("=")
                    first_cp = line.find(")")
                    last_assign = line.rfind("=")
                    grid_config = line[first_assign+1: first_cp+1]
                    block_config = line[last_assign+1: len(line)-1]
                i = i+1

            codefile.close()

            # print(code_segment)
            # print(grid_config)
            # print(block_config)
            ##########
            header = """
            #include <cassert>
            #include <stdlib.h>
            #include <cuda.h>
            #include "common.h"
            \n
            """

            function_wrapper1 = """void conv_kernel_wrapper(int N_B, int N_C, int N_H, int N_W, int N_F, int N_R, int N_S, int PaddingH, int PaddingW,
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
                    """
            grid_config = "\ndim3 size_grid" + grid_config + ";\n"
            block_config = "\ndim3 size_block" + block_config + ";\n"

            function_wrapper2 = """ 
                       printf("warmup....\\n");
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
                        //if (err != cudaSuccess) printf("Error: %s\\n", cudaGetErrorString(err));
                        double msecTotal = 0;
                        for (int j = 1; j < itr; j++) {   
                            printf("%0.5lf\\n", time_arr[j]);
                            msecTotal += time_arr[j];
                        }
                    
                        /*write back to Host Output -- batch size is 1*/
                        CHECK(cudaMemcpy(Output, dev_Output, sizeof(float) * N_B * N_F * N_X * N_Y, cudaMemcpyDeviceToHost));
                    
                        CHECK(cudaFree(dev_Input));
                        CHECK(cudaFree(dev_Kernel));
                        CHECK(cudaFree(dev_Output));
                    
                    }
            """

            cudafile = open(filename+".cu", "w")
            cudafile.write(header)
            cudafile.write(code_segment)
            cudafile.write(function_wrapper1)
            cudafile.write(grid_config)
            cudafile.write(block_config)
            cudafile.write(function_wrapper2)

            cudafile.flush()
            cudafile.close()

if __name__ == '__main__':
    dump("/home/yufan/tvm-ansor-v0.7/testbed/code_files")


