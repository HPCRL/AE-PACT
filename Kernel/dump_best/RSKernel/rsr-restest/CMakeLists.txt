
    cmake_minimum_required(VERSION 3.12)
    set(CMAKE_CUDA_ARCHITECTURES 75 70)
    project(conv LANGUAGES CXX CUDA)
    set(CMAKE_CXX_STANDARD 11)
    set(CMAKE_CUDA_STANDARD 11)
    set(CMAKE_CUDA_SEPARABLE_COMPILATION OFF)
    find_package(OpenMP REQUIRED)

    
set(CUDATUNINGP "-DT_k=4 -DT_h=1 -DT_w=7 -DinAdjustedTileH=3 -DinAdjustedTileW=9 -DB_h=14 -DB_w=2 -DmemTileH=16 -DmemTileW=16 -DOutBlockK=32 -DOutBlockH=14 -DOutBlockW=14 -DBlockXCoverageNumber=1 -DCDivisionSize=4 -DCBlockMult=32")
set(CUDAPROBLEMSIZE "-DOT=1 -DN_R=3 -DR=3 -DN_S=3 -DS=3 -DN_B=1 -DN_F=128 -DK=128 -DN_C=128 -DC=128 -DN_W=240 -DW=238 -DN_H=240 -DH=238 -DStrideW=1 -DStrideH=1 -DPaddingH=0 -DPaddingW=0")
set(PROGFLAG  "-DIN_LAYOUT=1 -DTVM=0") 

add_executable(CSG128x238x238_128_3 main_withcheck.cpp CSG128x238x238_128_3.cu) 
set_target_properties(CSG128x238x238_128_3 PROPERTIES COMPILE_FLAGS  "${CUDAPROBLEMSIZE} ${CUDATUNINGP} ${PROGFLAG}  -fopenmp ") 
target_compile_options(CSG128x238x238_128_3 PRIVATE $<$<COMPILE_LANGUAGE:CUDA>:-O3 -arch=sm_70 -res-usage -lineinfo -maxrregcount 56 >) 

