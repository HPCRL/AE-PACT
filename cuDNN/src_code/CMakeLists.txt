cmake_minimum_required(VERSION 3.12)

project(cudnn-ref LANGUAGES C CXX CUDA)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CUDA_STANDARD 11)
set(CMAKE_CUDA_SEPARABLE_COMPILATION OFF)
find_package(OpenMP REQUIRED)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  ${CUDAPROBLEMSIZE} ${CUDATUNINGP} ${PROGFLAG} -march=native -fopenmp")

#change sm_75 to sm_70 if you run it on v100
set(CMAKE_CUDA_FLAGS "-O3  -arch=sm_75 -res-usage -lineinfo  -Xcompiler  \"${CMAKE_CXX_FLAGS}\"")


#your cuda /cuda/include and /cuda/lib64 path
include_directories(...)
link_directories(...)  

add_executable(cudnn_ref main.cpp cudnn.cu)
target_link_libraries(cudnn_ref cudnn)

