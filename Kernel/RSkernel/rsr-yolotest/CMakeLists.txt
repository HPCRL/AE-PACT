
    cmake_minimum_required(VERSION 3.12)
    set(CMAKE_CUDA_ARCHITECTURES 75 70)
    project(conv LANGUAGES CXX CUDA)
    set(CMAKE_CXX_STANDARD 11)
    set(CMAKE_CUDA_STANDARD 11)
    set(CMAKE_CUDA_SEPARABLE_COMPILATION OFF)
    find_package(OpenMP REQUIRED)

    
set(CUDATUNINGP "-DT_k=4 -DT_h=1 -DT_w=17 -DinAdjustedTileH=3 -DinAdjustedTileW=19 -DB_h=1 -DB_w=1 -DmemTileH=3 -DmemTileW=19 -DOutBlockK=32 -DOutBlockH=1 -DOutBlockW=17 -DBlockXCoverageNumber=8 -DCDivisionSize=64 -DCBlockMult=8")
set(CUDAPROBLEMSIZE "-DOT=1 -DN_R=3 -DR=3 -DN_S=3 -DS=3 -DN_B=1 -DN_F=1024 -DK=1024 -DN_C=512 -DC=512 -DN_W=19 -DW=17 -DN_H=19 -DH=17 -DStrideW=1 -DStrideH=1 -DPaddingH=0 -DPaddingW=0")
set(PROGFLAG  "-DIN_LAYOUT=1 -DTVM=0") 

add_executable(CSGyolo-8 main_withcheck.cpp CSGyolo-8.cu) 
set_target_properties(CSGyolo-8 PROPERTIES COMPILE_FLAGS  "${CUDAPROBLEMSIZE} ${CUDATUNINGP} ${PROGFLAG}  -fopenmp ") 
target_compile_options(CSGyolo-8 PRIVATE $<$<COMPILE_LANGUAGE:CUDA>:-O3 -arch=sm_70 -res-usage -lineinfo -maxrregcount 126 >) 

