# -*- coding: utf-8 -*-
"""
Created on Sun Feb 14 14:06:37 2021

@author: Erik Barton
"""
import subprocess
import os
import sys
import math
        
# TODO: KNOWN BUGS:
# Some cases report 0 as # of blocks/sm at a time
# If K is very large will not produce output even if smaller K with all else same will

""" Calculate all statistics """
def calcAll(argv):

    kList = [1, 2, 4, 8, 16, 32, 64]
    
    if len(argv) != 6:
        print("Error there were not six arguments.")
        return

    #Problem Values
    K = int(argv[0]) #512
    H = int(argv[1]) #40
    W = int(argv[2]) #40
    C = int(argv[3]) #256
    rs = int(argv[4]) #3
    layer_name = argv[5]
    path = os.getcwd()
    filename = str(K) + "x" + str(H) + "x" + str(W) + "_" + str(C) + "_" + str(rs)
    
    #Problem Implications
    OptimalInputElementsMoved = (H+rs-1)*(W+rs-1)*(C) + 0.0
    OptimalOutputElementsMoved = (H)*(W)*(K) + 0.0
    
    #Constants
    WarpSize=32
    wordSize = 4
    usingSumShared = True
    forceExactFit = True
    useKernShared = False
    useKernelShared = False
    OIMinBnd = 2
    OccupMinBnd = .2
    
    #Constraints # TODO: make this something that we pass in
    maxRegThread = 255
    maxRegBlock = 65536
    regSafteyMargin = 20
    maxThreadsBlock = 1024
    maxWordsOfSharedMemory = 49152 / wordSize
    maxRegSM = 65536
    maxWordsOfSharedMemorySM = 65536 / wordSize
    maxWarpsSM = 32
    maxBlockSM = 16
    numberSMProcess = 68.0
    maxThreadsPerBlock = 1024
    counter = 1
    try:
        mult = 1
        W_c = 1
        W_k = 32
        t = 0
        for mult in range(1, 33):
            # We must be able to eavently devide C with the multiple
            if (C % mult) != 0:
                continue
            for B_h in range(1,17):
                for B_w in range(1,17):
                    for T_k in kList:
                        for T_h in range(1,32):
                            for T_w in range(1,32):
                                for T_c in range(1,2): # Limited for now
                                    
                                    #if B_h != 2 or B_w != 4 or T_k != 4 or T_h != 4 or T_w != 5:
                                        #continue
                                    
                                    # CHECK the total number of threads we are using (TODO: is double checked) ----------
                                    totalThreadsUsed = WarpSize * B_h * B_w
                                    if totalThreadsUsed > maxThreadsBlock:
                                        continue
                                    
                                    # CHECK the total width of the inport is less than a warp (TODO: fix this in implementation) ----------
                                    if (T_w * B_w + rs - 1) > 32:
                                        continue
                                    
                                    # CHECK want the T_w parameter to be larger - seen to be faster and want to remove the mirror case ----------
                                    if (T_w < T_h):
                                        continue
                                    
                                    # CHECK the total number of threads this block will use
                                    registersUsed = T_h * T_w * T_k + (T_h + rs - 1) * (T_w + rs - 1) * T_c + 1
                                    if registersUsed > (maxRegThread - regSafteyMargin):
                                        continue

                                    totalRegistersUsedBlock = WarpSize * B_h * B_w * registersUsed
                                        
                                    if totalRegistersUsedBlock > (maxRegBlock-regSafteyMargin):
                                        continue

                                    # CHECK Shared Memory ----------
                                    sharedMemoryIn = (B_h * T_h + rs - 1) * (B_w * T_w + rs - 1) * (W_c * T_c)

                                    sharedMemoryOut = (B_h * T_h) * (B_w * T_w) * W_k * 1 # Move T_k times
                                    # TODO: Kernel shared

                                    totalShared = 0
                                    if usingSumShared:
                                        totalShared = sharedMemoryIn + sharedMemoryOut
                                    else:
                                        totalShared = max(sharedMemoryIn, sharedMemoryOut)
                                        
                                    if totalShared > maxWordsOfSharedMemory:
                                        continue

                                    # Count number of warps ----------
                                    blockCountH = H / (B_h*T_h)
                                    blockCountW = W / (B_w*T_w)
                                    blockCountK = K / (W_k*T_k)
                                        
                                    
                                    if forceExactFit:
                                        if (((B_h*T_h) * int(blockCountH)) != H) or (((B_w*T_w) * int(blockCountW)) != W) or (((W_k*T_k) * int(blockCountK)) != K):
                                            continue
                                    
                                    totalBlockCount = blockCountH * blockCountW * blockCountK
                                    if t == 0:
                                        totalBlockCount *= mult
                                    
                                    warpsPerBlock = B_h * B_w
                                        
                                    # Recheck
                                    if (warpsPerBlock * WarpSize) > maxThreadsPerBlock:
                                        continue
                                    
                                    totalWarps = totalBlockCount * warpsPerBlock
                                    
                                    # Occupancy ----------
                                    if warpsPerBlock > maxWarpsSM: # We cannot fit a single block
                                        continue
                                    blocksPerSMWarps = int(maxWarpsSM / warpsPerBlock)
                                    blocksPerSMSharedMemory = int(maxWordsOfSharedMemorySM / totalShared)
                                    blocksPerSMReg = int(maxRegSM / totalRegistersUsedBlock)

                                    blocksPerSM = min(blocksPerSMWarps, blocksPerSMSharedMemory, blocksPerSMReg)
                                    if blocksPerSM > maxBlockSM:
                                        blocksPerSM = maxBlockSM
                                        
                                    blockLimiter = ""
                                    if blocksPerSM == blocksPerSMWarps:
                                        blockLimiter = "Warps"
                                    elif blocksPerSM == blocksPerSMSharedMemory:
                                        blockLimiter = "Shared"
                                    elif blocksPerSM == blocksPerSMReg:
                                        blockLimiter = "Reg"
                                    elif blocksPerSM == maxBlockSM:
                                        blockLimiter = "Max"
                                    
                                    warpsPerSM = warpsPerBlock * blocksPerSM
                                    
                                    Occup = warpsPerSM / (maxWarpsSM + 0.0)
                                    
                                    # Count OI Register level ----------
                                    
                                    OI = ((rs*rs)*T_k*T_w*T_h*T_c) / ((T_h + rs - 1) * (T_w + rs - 1) * T_c + rs * rs * T_k * T_c)
                                    
                                    #if OI < OIMinBnd or Occup < OccupMinBnd:
                                    #    continue
                                    
                                    # SHARED MEMORY LEVEL CALCS ----------
                                    oppsSM = B_w*B_h*T_w*T_h*W_k*T_k*rs*rs*W_c
                                    
                                    sharedVolume_In = (B_w * T_w + rs - 1) * (B_h * T_h + rs - 1) * W_c * T_c

                                    sharedVolume_Kern = 0
                                    
                                    if useKernelShared:
                                        sharedVolume_Kern = rs * rs * W_k * T_k * W_c
                                        
                                    sharedVolumeTotal = sharedVolume_In + sharedVolume_Kern
                                    
                                    OISharedMemory = oppsSM / sharedVolumeTotal
                                    
                                    # TOTAL DATA MOVEMENT CALCS ----------
                                    numberOfElementsPerBlockMovedToSM = 0
                                    numberOfElementsPerBlockMovedToMem = 0
                                    numberOfElementsPerBlockMovedToSMFromKern = 0
                                    
                                    if t == 0:
                                        numberOfElementsPerBlockMovedToSM = (C/mult) * (B_h * T_h + rs - 1) * (B_w * T_w + rs - 1)
                                        numberOfElementsPerBlockMovedToMem = (W_k * T_k) * (B_h * T_h) * (B_w * T_w)
                                    
                                    if useKernShared:
                                        numberOfElementsPerBlockMovedToSMFromKern += 0 #TODO: Decide if want to add something
                                        
                                    totalNumberOfElementsMovedSMForProblem = totalBlockCount * numberOfElementsPerBlockMovedToSM
                                    totalNumberOfelementsMovedMemForProblem = totalBlockCount * numberOfElementsPerBlockMovedToMem
                                    
                                    multiplierIncreaseElementsMovedFromIn = (totalNumberOfElementsMovedSMForProblem / OptimalInputElementsMoved)
                                    multiplierIncreaseElementsMovedToOut = (totalNumberOfelementsMovedMemForProblem / OptimalOutputElementsMoved)
                                    
                                    # Stream Multi Proc CALCS ----------
                                    SMprocessUtalization = totalBlockCount / numberSMProcess


                                    gen_files(H, W, K, C, rs, rs, T_k, T_h, T_w, 32, B_h, B_w, mult, registersUsed)
                                    create_cmake(H, W, K, C, rs, rs, T_k, T_h, T_w, 32, B_h, B_w, mult, registersUsed)
                                    compile_code(path + "/build")
                                    os.makedirs(path + "/build/" + layer_name, exist_ok=True)
                                    # launch
                                    # args filePathOutput, fileNameOutput, filename
                                    #doLaunch(path + "/build", path + "/build/timesForProblem"+filename+".txt", filename, registersUpper)
                                    doLaunch(path + "/build", path + "/build/"+layer_name+"/timesForProblem"+filename+".txt", filename, registersUsed)
                                    counter += 1

                                    # if counter == 3:
                                    #     return

    except Exception as e:
        print("Error in program.")
        print("Error for tile: " + str(T_k) + " " + str(T_h) + " " + str(T_w) + " " + str(32) + " " + str(B_h) + " " + str(B_w) + " " + str(mult) + " " + str(registersUsed))
        print(e)

def gen_files(H, W, K, C, R, S, Tk, Th, Tw, Bk, Bh, Bw, CMult, RegLim):
    newPGM = ""
    one = "#pragma unroll({}) // ReplaceLine 000001".format(Tk)
    two = "#pragma unroll({}) // ReplaceLine 000002".format(R)
    three = "#pragma unroll({}) // ReplaceLine 000003".format(S)
    four = "#pragma unroll({}) // ReplaceLine 000004".format(Th)
    five = "#pragma unroll({}) // ReplaceLine 000005".format(Tw)

    oneM = "ReplaceLine 000001"
    twoM = "ReplaceLine 000002"
    threeM = "ReplaceLine 000003"
    fourM = "ReplaceLine 000004"
    fiveM = "ReplaceLine 000005"

    # print(one)
    # print(two)
    # print(three)

    fCSG = open("template_rsr.code", "r")
    for line in fCSG:
        strpLine = line
        if oneM in strpLine:
            newPGM += one + "\n"
        elif twoM in strpLine:
            newPGM += two + "\n"
        elif threeM in strpLine:
            newPGM += three + "\n"
        elif fourM in strpLine:
            newPGM += four + "\n"
        elif fiveM in strpLine:
            newPGM += five + "\n"
        else:
            newPGM += strpLine

    filename = str(K) + "x" + str(H) + "x" + str(W) + "_" + str(C) + "_" + str(R)
    outfCSG = open("CSG" + filename + ".cu", "w")
    outfCSG.write(newPGM)
    outfCSG.write("\n")
    outfCSG.write("\n")
    function_wrapper = open("wrapper.code", "r").read()
    outfCSG.write(function_wrapper)
    outfCSG.flush()
    outfCSG.close()

def create_cmake(H, W, K, C, R, S, Tk, Th, Tw, Bk, Bh, Bw, CMult, RegLim):
# Calced vals
    HPrime = H + R - 1
    WPrime = W + S - 1

    ITh = Th + R - 1
    ITw = Tw + S - 1

    MH = Th * Bh + R - 1
    MW = Tw * Bw + S - 1

    OH = Th * Bh
    OW = Tw * Bw

    BKcvg = int(K / (Tk * Bk))
    CDivSize = int(C / CMult)

    filename = str(K) + "x" + str(H) + "x" + str(W) + "_" + str(C) + "_" + str(R)

    cmake_header = """
    cmake_minimum_required(VERSION 3.12)
    set(CMAKE_CUDA_ARCHITECTURES 75 70)
    project(conv LANGUAGES CXX CUDA)
    set(CMAKE_CXX_STANDARD 11)
    set(CMAKE_CUDA_STANDARD 11)
    set(CMAKE_CUDA_SEPARABLE_COMPILATION OFF)
    find_package(OpenMP REQUIRED)

    """
    tileNew = "\nset(CUDATUNINGP \"-DT_k={} -DT_h={} -DT_w={} -DinAdjustedTileH={} -DinAdjustedTileW={} -DB_h={} -DB_w={} -DmemTileH={} -DmemTileW={} -DOutBlockK={} -DOutBlockH={} -DOutBlockW={} -DBlockXCoverageNumber={:.0f} -DCDivisionSize={:.0f} -DCBlockMult={}\")"
    tileNew = tileNew.format(Tk, Th, Tw, ITh, ITw, Bh, Bw, MH, MW, Bk, OH, OW, BKcvg, CDivSize, CMult)

    problemNew = "\nset(CUDAPROBLEMSIZE \"-DOT=1 -DN_R={} -DR={} -DN_S={} -DS={} -DN_B=1 -DN_F={} -DK={} -DN_C={} -DC={} -DN_W={} -DW={} -DN_H={} -DH={} -DStrideW=1 -DStrideH=1 -DPaddingH=0 -DPaddingW=0\")"
    problemNew = problemNew.format(R, R, S, S, K, K, C, C, WPrime, W, HPrime, H)
    flag = "\nset(PROGFLAG  \"-DIN_LAYOUT=1 -DTVM=0\") \n"

    exeNew = "\nadd_executable(CSG" + filename + " main_withcheck.cpp " + "CSG" + filename + ".cu) \n"
    setProperties = "set_target_properties(CSG" + filename + " PROPERTIES COMPILE_FLAGS  \"${CUDAPROBLEMSIZE} ${CUDATUNINGP} ${PROGFLAG}  -fopenmp \") \n"
    compileOption = "target_compile_options(CSG" + filename + " PRIVATE $<$<COMPILE_LANGUAGE:CUDA>:-O3 -arch=sm_70 -res-usage -lineinfo -maxrregcount {} >) \n".format(RegLim)


    fCM = open("CMakeLists.txt", "w")
    fCM.write(cmake_header)
    fCM.write(tileNew)
    fCM.write(problemNew)
    fCM.write(flag)
    fCM.write(exeNew)
    fCM.write(setProperties)
    fCM.write(compileOption)
    fCM.write("\n")
    fCM.flush()
    fCM.close()

def compile_code(filePathOutput):
    try:
        os.makedirs(filePathOutput, exist_ok=True)
        res = subprocess.run("cmake ..", shell=True, cwd=filePathOutput)
        if res.returncode != 0: print("Cmake failed")
        res = subprocess.run("make -j32 > makeDump.txt 2>&1", shell=True, timeout=20.0, cwd=filePathOutput)
        if res.returncode != 0: print("make failed")
    except Exception as e:
        print("failure in compile", e)


def doLaunch(filePathOutput, fileNameOutput, filename, reg):
    subprocess.run("echo reg" + str(reg) + ">> " + fileNameOutput + " 2>&1", cwd=filePathOutput,
                   shell=True)
    subprocess.run("./CSG" + filename + ">> " + fileNameOutput + " 2>&1", cwd=filePathOutput,
                   shell=True, timeout=1000.0)
    return


""" Launches calculation as the main. """
if __name__ == '__main__':
    calcAll(sys.argv[1:])
