cmake_minimum_required(VERSION 3.12)

project(tvm-dump LANGUAGES C CXX CUDA)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CUDA_STANDARD 11)
set(CMAKE_CUDA_SEPARABLE_COMPILATION OFF)
find_package(OpenMP REQUIRED)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  ${CUDAPROBLEMSIZE} ${CUDATUNINGP} ${PROGFLAG} -march=native -fopenmp")

set(CMAKE_CUDA_FLAGS "-O3  -arch=sm_75 -res-usage -lineinfo  -Xcompiler  \"${CMAKE_CXX_FLAGS}\"")

#your cuda /cuda/include 
include_directories(...)

add_executable(Resnet1 main.cpp Resnet1.cu)
add_executable(Resnet2 main.cpp Resnet2.cu)
add_executable(Resnet3 main.cpp Resnet3.cu)
add_executable(Resnet4 main.cpp Resnet4.cu)
add_executable(Resnet5 main.cpp Resnet5.cu)
add_executable(Resnet6 main.cpp Resnet6.cu)
add_executable(Resnet7 main.cpp Resnet7.cu)
add_executable(Resnet8 main.cpp Resnet8.cu)
add_executable(Resnet9 main.cpp Resnet9.cu)
add_executable(Resnet10 main.cpp Resnet10.cu)
add_executable(Resnet11 main.cpp Resnet11.cu)
add_executable(Resnet12 main.cpp Resnet12.cu)


add_executable(YOLO0 main.cpp YOLO0.cu)
add_executable(YOLO1 main.cpp YOLO1.cu)
add_executable(YOLO2 main.cpp YOLO2.cu)
add_executable(YOLO3 main.cpp YOLO3.cu)
add_executable(YOLO4 main.cpp YOLO4.cu)
add_executable(YOLO5 main.cpp YOLO5.cu)
add_executable(YOLO6 main.cpp YOLO6.cu)
add_executable(YOLO7 main.cpp YOLO7.cu)
add_executable(YOLO8 main.cpp YOLO8.cu)
add_executable(YOLO9 main.cpp YOLO9.cu)


add_executable(Defo0 main.cpp Defo0.cu)
add_executable(Defo1 main.cpp Defo01.cu)
add_executable(Defo2 main.cpp Defo1.cu)
add_executable(Defo3 main.cpp Defo11.cu)
add_executable(Defo4 main.cpp Defo2.cu)
add_executable(Defo5 main.cpp Defo21.cu)