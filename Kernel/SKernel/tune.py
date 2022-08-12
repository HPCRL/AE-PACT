import subprocess
import os
import sys
import math


def compile_code(filePathOutput):
    try:
        os.makedirs(filePathOutput, exist_ok=True)
        res = subprocess.run("cmake ..", shell=True, cwd=filePathOutput)
        if res.returncode != 0: print("Cmake failed")
        res = subprocess.run("make -j32 > makeDump.txt 2>&1", shell=True, timeout=10.0, cwd=filePathOutput)
        if res.returncode != 0: print("make failed")
    except Exception as e:
        print("failure in compile", e)


def create_cmake(H, W, K, C, R, S, Tk, Th, Tw, Bk, Bh, Bw, Wk, Wh, Ww, RegLim):
    HPrime = H + R - 1
    WPrime = W + S - 1
    ITw = Tw + S - 1
    SMH = Th * Bh * Wh + R - 1
    SMW = Tw * Bw * Ww + S - 1
    CMult = 1
    BKcvg = int(K / (Tk * Bk * Wk))
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
    tileConfig = "string(CONCAT tconfig \n" \
              "\" -DT_h={} -DT_w={} -DT_k={} \" \n" \
              "\" -DW_h={} -DW_w={} -DW_k={} \" \n" \
              "\" -DB_h={} -DB_w={} -DB_k={} \" \n" \
              "\" -DinAdjustedTileW={} -DmemTileH={} -DmemTileW={} \" \n " \
              "\" -DBlockXCoverageNumber={:.0f} -DCDivisionSize={:.0f} -DCBlockMult={}\" \n) \n"
    tileConfig = tileConfig.format(Th, Tw, Tk, Wh, Ww, Wk, Bh, Bw, Bk, ITw, SMH, SMW, BKcvg, CDivSize, CMult)

    print(tileConfig, RegLim)

    tileSize = "set(CUDATUNINGP ${tconfig} )\n"
    problemNew = "set(CUDAPROBLEMSIZE \"-DOT=1 -DN_R={} -DR={} -DN_S={} -DS={} -DN_B=1 -DN_F={} -DK={} -DN_C={} -DC={} " \
                 "-DN_W={} -DW={} -DN_H={} -DH={} -DStrideW=1 -DStrideH=1 -DPaddingH=0 -DPaddingW=0\") \n"
    problemNew = problemNew.format(R, R, S, S, K, K, C, C, WPrime, W, HPrime, H)
    flag = "set(PROGFLAG  \"-DIN_LAYOUT=1 -DTVM=0\") \n"

    exeNew = "add_executable(CSG" + filename + " main_withcheck.cpp " + "CSG" + filename + ".cu) \n"
    setProperties = "set_target_properties(CSG" + filename + " PROPERTIES COMPILE_FLAGS  \"${CUDAPROBLEMSIZE} ${CUDATUNINGP} ${PROGFLAG}  -fopenmp \") \n"
    compileOption = "target_compile_options(CSG" + filename + " PRIVATE $<$<COMPILE_LANGUAGE:CUDA>:-O3 -arch=sm_75 -res-usage -lineinfo -maxrregcount {} >) \n".format(RegLim)


    fCM = open("CMakeLists.txt", "w")
    fCM.write(cmake_header)
    fCM.write(tileConfig)
    fCM.write(tileSize)
    fCM.write(problemNew)
    fCM.write(flag)
    fCM.write(exeNew)
    fCM.write(setProperties)
    fCM.write(compileOption)
    fCM.write("\n")
    fCM.flush()
    fCM.close()


def gen_files(H, W, K, C, R, S, Tk, Th, Tw, Bk, Bh, Bw, Wk, Wh, Ww, RegLim):
    newPGM = ""
    one = "#pragma unroll({}) // ReplaceLine 000001".format(R)
    two = "#pragma unroll({}) // ReplaceLine 000002".format(S)
    three = "#pragma unroll({}) // ReplaceLine 000003".format(Tw)
    print(one)
    print(two)
    print(three)

    oneM = "ReplaceLine 000001"
    twoM = "ReplaceLine 000002"
    threeM = "ReplaceLine 000003"

    fCSG = open("template.code", "r")
    for line in fCSG:
        strpLine = line
        if oneM in strpLine:
            newPGM += one + "\n"
        elif twoM in strpLine:
            newPGM += two + "\n"
        elif threeM in strpLine:
            newPGM += three + "\n"
        else:
            newPGM += strpLine
    fCSG.close()

    filename = str(K) + "x" + str(H) + "x" + str(W) + "_" + str(C) + "_" + str(R)
    outfCSG = open("CSG" + filename + ".cu", "w")
    outfCSG.write(newPGM)
    outfCSG.write("\n")
    outfCSG.write("\n")
    function_wrapper = open("wrapper_time.code", "r").read()
    outfCSG.write(function_wrapper)
    outfCSG.flush()
    outfCSG.close()


def doLaunch(filePathOutput, fileNameOutput, filename, reg):
    subprocess.run("echo reg" + str(reg) + ">> " + fileNameOutput + " 2>&1", cwd=filePathOutput,
                   shell=True)
    subprocess.run("./CSG" + filename + ">> " + fileNameOutput + " 2>&1", cwd=filePathOutput,
                   shell=True, timeout=1000.0)
    return


def get_factor_list(num: int):
    factors = []
    for i in range(1, num + 1):
        if num % i == 0:
            factors.append(i)
    return factors


def calc_all(argv):
    K = int(argv[0])
    H = int(argv[1])
    W = int(argv[2])
    C = int(argv[3])
    rs = int(argv[4])
    layer_name = argv[5]
    path = os.getcwd()
    filename = str(K) + "x" + str(H) + "x" + str(W) + "_" + str(C) + "_" + str(rs)
    warpSize = 32
    wordSize = 4
    # Constraints #
    maxRegThread = 255
    maxRegBlock = 65536
    regSafteyMargin = 20
    maxThreadsBlock = 1024
    maxWordsOfSharedMemory = 49152 / wordSize
    maxRegSM = 65536
    maxWordsOfSharedMemorySM = 65536 / wordSize
    maxWarpsSM = 32
    maxBlockSM = 16
    numberSMProcess = 68
    maxThreadsPerBlock = 1024

    reg_k_list = [ 2, 4, 8, 16, 32, 64]
    reg_w_factor_list = get_factor_list(W)
    warp_w_list = [1, 2, 4, 8, 16, 32] 

    counter = 1

    T_h = 1
    W_h = 1
    try:
        for T_w in reg_w_factor_list:
            for T_k in reg_k_list:
                for W_w in warp_w_list:    
                    W_k = warpSize // W_w
                    B_w = W // W_w // T_w
                    if W != (T_w * W_w * B_w):
                        continue
                    for B_k in range(1, K//T_k//W_k):
                        if K % (T_k * W_k * B_k) != 0:      # no partial tile on K
                            continue
                        for B_h in get_factor_list(H):
                            # a) CHECK the total number of threads we are using
                            totalThreadsUsed_per_TB = B_k * B_h * B_w * warpSize
                            if totalThreadsUsed_per_TB > maxThreadsBlock:
                                continue

                            # b) CHECK the total number of threads this block will use
                            registersUsed_per_thread = T_h * T_w * T_k + (T_w + rs - 1) + 2
                            if registersUsed_per_thread > (maxRegThread - regSafteyMargin):
                                continue

                            totalRegistersUsed_per_TB = totalThreadsUsed_per_TB * registersUsed_per_thread
                            if totalRegistersUsed_per_TB > (maxRegBlock - regSafteyMargin):
                                continue

                            # c) CHECK Shared Memory
                            sharedMemoryIn = (B_h * T_h * W_h + rs - 1) * (B_w * T_w * W_w + rs - 1) * 2
                            sharedMemoryOut = (B_h * T_h * W_h) * (B_w * T_w * W_w) * (W_k*B_k)
                            sharedMemoryKern = (rs*rs) * (B_k * T_k * W_k) *2
                            totalShared = sharedMemoryIn + sharedMemoryOut + sharedMemoryKern
                            if totalShared > maxWordsOfSharedMemory:
                                continue

                            registersUpper = max(registersUsed_per_thread, 128)
                            # setup CMAKELIST and unroll in source code
                            # args H, W, K, C, R, S, Tk, Th, Tw, Bk, Bh, Bw, Wk, Wh, Ww, RegLim
                            gen_files(H, W, K, C, rs, rs, T_k, T_h, T_w, B_k, B_h, B_w, W_k, W_h, W_w, registersUpper)
                            create_cmake(H, W, K, C, rs, rs, T_k, T_h, T_w, B_k, B_h, B_w, W_k, W_h, W_w, registersUpper)
                            compile_code(path + "/build")
                            os.makedirs(path + "/build/" + layer_name, exist_ok=True)
                            # launch
                            # args filePathOutput, fileNameOutput, filename
                            #doLaunch(path + "/build", path + "/build/timesForProblem"+filename+".txt", filename, registersUpper)
                            doLaunch(path + "/build", path + "/build/"+layer_name+"/timesForProblem"+filename+".txt", filename, registersUpper)
                            counter += 1

                            # if counter == 3:
                            #     return

    except Exception as e:
        print("Error in program.")
        print("Error for tile: \n" +
              "\" -DT_h={} -DT_w={} -DT_k={} \" \n" \
              "\" -DW_h={} -DW_w={} -DW_k={} \" \n" \
              "\" -DB_h={} -DB_w={} -DB_k={} \" \n" \
              .format(T_h, T_w, T_k,
                      W_h, W_w, W_k,
                      B_h, B_w, B_k) + str(registersUpper))
        print(e)

    print("total config ", counter)

if __name__ == '__main__':
    # K value, H value (output), W value (output), C value, RS value
    if len(sys.argv) != 6:
        print("Error, there were not sixteen arguments.")
    calc_all(sys.argv[1:])

    # calc_all([64, 272, 272, 32, 3])


