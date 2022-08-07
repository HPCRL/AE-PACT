#include <cudnn.h>
#include <cassert>
#include <stdlib.h>
#include <cuda.h>
#include "common.h"
#include <set>

const char *cudnnAlgName[] = {
    "CUDNN_CONVOLUTION_FWD_ALGO_IMPLICIT_GEMM",
    "CUDNN_CONVOLUTION_FWD_ALGO_IMPLICIT_PRECOMP_GEMM",
    "CUDNN_CONVOLUTION_FWD_ALGO_GEMM",
    "CUDNN_CONVOLUTION_FWD_ALGO_DIRECT",
    "CUDNN_CONVOLUTION_FWD_ALGO_FFT",
    "CUDNN_CONVOLUTION_FWD_ALGO_FFT_TILING",
    "CUDNN_CONVOLUTION_FWD_ALGO_WINOGRAD",
    "CUDNN_CONVOLUTION_FWD_ALGO_WINOGRAD_NONFUSED",
    "CUDNN_CONVOLUTION_FWD_ALGO_COUNT"};

void conv_kernel_wrapper(int N_B, int N_C, int N_H, int N_W, int N_F, int N_R, int N_S, int PaddingH, int PaddingW,
                        int StrideH, int StrideW, int N_X, int N_Y, const float *Input, const float *Kernel, float *Output, int itr, int algo) {
    cudaSetDevice(0);
    cudnnHandle_t cudnn;
    cudnnCreate(&cudnn);
    float *dev_Input;
    float *dev_Kernel;
    float *dev_Output;

    cudnnTensorDescriptor_t input_descriptor;
    checkCUDNN(cudnnCreateTensorDescriptor(&input_descriptor));
    checkCUDNN(cudnnSetTensor4dDescriptor(input_descriptor,
            /*format=*/CUDNN_TENSOR_NCHW,
            /*dataType=*/CUDNN_DATA_FLOAT,
            /*batch_size=*/N_B,
            /*channels=*/N_C,
            /*image_height=*/N_H,
            /*image_width=*/N_W));

    cudnnFilterDescriptor_t kernel_descriptor;
    checkCUDNN(cudnnCreateFilterDescriptor(&kernel_descriptor));
    checkCUDNN(cudnnSetFilter4dDescriptor(kernel_descriptor,
            /*dataType=*/CUDNN_DATA_FLOAT,
            /*format=*/CUDNN_TENSOR_NCHW,
            /*out_channels=*/N_F,
            /*in_channels=*/N_C,
            /*kernel_height=*/N_R,
            /*kernel_width=*/N_S));

    cudnnConvolutionDescriptor_t convolution_descriptor;
    checkCUDNN(cudnnCreateConvolutionDescriptor(&convolution_descriptor));
    checkCUDNN(cudnnSetConvolution2dDescriptor(convolution_descriptor,
            /*pad_height=*/PaddingH,
            /*pad_width=*/PaddingW,
            /*vertical_stride=*/StrideH,
            /*horizontal_stride=*/StrideW,
            /*dilation_height=*/DilationH,
            /*dilation_width=*/DilationW,
            /*mode=*/CUDNN_CROSS_CORRELATION,
            /*computeType=*/CUDNN_DATA_FLOAT));

    // see out put dim
    int channels{0}, height{0}, width{0}, batch_size{0};
    checkCUDNN(cudnnGetConvolution2dForwardOutputDim(convolution_descriptor,
                                                     input_descriptor,
                                                     kernel_descriptor,
                                                     &batch_size,
                                                     &channels,
                                                     &height,
                                                     &width));

    //printf( "Output Image: %d x %d x %d x %d \n", height, width, channels, batch_size);

    assert(batch_size == N_B);
    assert(channels == N_F);
    assert(height == N_Y);
    assert(width == N_X);

    cudnnTensorDescriptor_t output_descriptor;
    checkCUDNN(cudnnCreateTensorDescriptor(&output_descriptor));
    checkCUDNN(cudnnSetTensor4dDescriptor(output_descriptor,
            /*format=*/CUDNN_TENSOR_NCHW,
            /*dataType=*/CUDNN_DATA_FLOAT,
            /*batch_size=*/N_B,
            /*output_channels=*/N_F,
            /*output_height=*/N_Y,
            /*output_width=*/N_X));
    
    size_t workspace_bytes{0};
    std::set<cudnnConvolutionFwdAlgo_t> algs;


    size_t t_bytes {0};
    auto err = cudnnGetConvolutionForwardWorkspaceSize(cudnn,
                                                    input_descriptor,
                                                    kernel_descriptor,
                                                    convolution_descriptor,
                                                    output_descriptor,
                                                    cudnnConvolutionFwdAlgo_t(algo),
                                                    &t_bytes);
    
    

    checkCUDNN(err);
    workspace_bytes = max(t_bytes, workspace_bytes);






    //printf("Workspace size: %.5f MB", (workspace_bytes / 1048576.0) );
    assert(workspace_bytes >= 0);
    void *d_workspace{nullptr};
    CHECK(cudaMalloc(&d_workspace, workspace_bytes));
    const float alpha = 1.0f, beta = 0.0f;

    //printf("\n===========================================================\n");
    printf("Input size: %d X %d X %d X %d\n", N_B, N_C, N_H, N_W);
    printf("Kernel size: %d X %d X %d X %d\n", N_F, N_C, N_R, N_S);
    printf("Output size: %d X %d X %d X %d\n", N_B, N_F, N_Y, N_X);
    printf("Algorithm: %s\n", cudnnAlgName[algo]);
    //printf("===========================================================\n");


   
        
    CHECK(cudaMalloc(&dev_Kernel, sizeof(float) * N_F * N_C * N_R * N_S));
    CHECK(cudaMemcpy(dev_Kernel, Kernel, sizeof(float) * N_F * N_C * N_R * N_S, cudaMemcpyHostToDevice));

    CHECK(cudaMalloc(&dev_Input, sizeof(float) * N_B * N_C * N_H * N_W));
    CHECK(cudaMemcpy(dev_Input, Input, sizeof(float) * N_B * N_C * N_H * N_W, cudaMemcpyHostToDevice));

    CHECK(cudaMalloc(&dev_Output, sizeof(float) * N_B * N_F * N_Y * N_X));
    CHECK(cudaMemset(dev_Output, 0, sizeof(float) * N_B * N_F * N_Y * N_X));
    cudnnConvolutionFwdAlgo_t convolution_algorithm = cudnnConvolutionFwdAlgo_t(algo);
    checkCUDNN(cudnnConvolutionForward(cudnn,
                                        &alpha,
                                        input_descriptor,
                                        dev_Input,
                                        kernel_descriptor,
                                        dev_Kernel,
                                        convolution_descriptor,
                                        convolution_algorithm,
                                        d_workspace,
                                        workspace_bytes,
                                        &beta,
                                        output_descriptor,
                                        dev_Output));


    cudaEvent_t start;
    cudaEventCreate(&start);
    cudaEvent_t stop;
    cudaEventCreate(&stop);

        
    CHECK(cudaFree(d_workspace));

    cudnnDestroyTensorDescriptor(input_descriptor);
    cudnnDestroyTensorDescriptor(output_descriptor);
    cudnnDestroyFilterDescriptor(kernel_descriptor);
    cudnnDestroyConvolutionDescriptor(convolution_descriptor);

    cudnnDestroy(cudnn);

}



