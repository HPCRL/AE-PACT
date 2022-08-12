
    cmake_minimum_required(VERSION 3.12)
    set(CMAKE_CUDA_ARCHITECTURES 75 70)
    project(conv LANGUAGES CXX CUDA)
    set(CMAKE_CXX_STANDARD 11)
    set(CMAKE_CUDA_STANDARD 11)
    set(CMAKE_CUDA_SEPARABLE_COMPILATION OFF)
    find_package(OpenMP REQUIRED)

    
set(CUDATUNINGP "-DT_k=1 -DT_h=2 -DT_w=18 -DinAdjustedTileH=4 -DinAdjustedTileW=20 -DB_h=1 -DB_w=1 -DmemTileH=4 -DmemTileW=20 -DOutBlockK=32 -DOutBlockH=2 -DOutBlockW=18 -DBlockXCoverageNumber=1 -DCDivisionSize=3 -DCBlockMult=1")
set(CUDAPROBLEMSIZE "-DOT=1 -DN_R=3 -DR=3 -DN_S=3 -DS=3 -DN_B=1 -DN_F=32 -DK=32 -DN_C=3 -DC=3 -DN_W=110 -DW=108 -DN_H=110 -DH=108 -DStrideW=1 -DStrideH=1 -DPaddingH=0 -DPaddingW=0")
set(PROGFLAG  "-DIN_LAYOUT=1 -DTVM=0") 

add_executable(CSG32x108x108_3_3 main_withcheck.cpp CSG32x108x108_3_3.cu) 
set_target_properties(CSG32x108x108_3_3 PROPERTIES COMPILE_FLAGS  "${CUDAPROBLEMSIZE} ${CUDATUNINGP} ${PROGFLAG}  -fopenmp ") 
target_compile_options(CSG32x108x108_3_3 PRIVATE $<$<COMPILE_LANGUAGE:CUDA>:-O3 -arch=sm_75 -res-usage -lineinfo -maxrregcount 117 >) 

