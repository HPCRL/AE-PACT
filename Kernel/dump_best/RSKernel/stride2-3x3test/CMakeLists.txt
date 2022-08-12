
    cmake_minimum_required(VERSION 3.12)
    set(CMAKE_CUDA_ARCHITECTURES 75 70)
    project(conv LANGUAGES CXX CUDA)
    set(CMAKE_CXX_STANDARD 11)
    set(CMAKE_CUDA_STANDARD 11)
    set(CMAKE_CUDA_SEPARABLE_COMPILATION OFF)
    find_package(OpenMP REQUIRED)

    
set(CUDATUNINGP "-DT_k=1 -DT_h=1 -DT_w=7 -DinAdjustedTileH=3 -DinAdjustedTileW=15 -DB_h=1 -DB_w=1 -DmemTileH=3 -DmemTileW=15 -DOutBlockK=32 -DOutBlockH=1 -DOutBlockW=7 -DBlockXCoverageNumber=16 -DCDivisionSize=16 -DCBlockMult=16")
set(CUDAPROBLEMSIZE "-DOT=1 -DN_R=3 -DR=3 -DN_S=3 -DS=3 -DN_B=1 -DN_F=512 -DK=512 -DN_C=256 -DC=256 -DN_W=15 -DW=7 -DN_H=15 -DH=7 -DStrideW=1 -DStrideH=1 -DPaddingH=0 -DPaddingW=0")
set(PROGFLAG  "-DIN_LAYOUT=1 -DTVM=0") 

add_executable(CSGresnet-10 main_withcheck.cpp CSGresnet-10.cu) 
set_target_properties(CSGresnet-10 PROPERTIES COMPILE_FLAGS  "${CUDAPROBLEMSIZE} ${CUDATUNINGP} ${PROGFLAG}  -fopenmp ") 
target_compile_options(CSGresnet-10 PRIVATE $<$<COMPILE_LANGUAGE:CUDA>:-O3 -arch=sm_70 -res-usage -lineinfo -maxrregcount 55 >) 

