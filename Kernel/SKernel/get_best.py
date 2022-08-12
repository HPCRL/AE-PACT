from collections import defaultdict
import os
import sys
import subprocess
import time

def data_extraction1(file_name, mapping):
    kernels = set(["new1x1", "RSkernel", "SKernel"])
    layer_config_kernel = defaultdict(lambda: defaultdict(lambda: defaultdict(list)))
    time_flag = False
    layer_name, problem, kernel = "", "", ""
    mapping_name = ""
    stride = 1
    ignore = False
    with open(file_name, 'rt') as myfile:
        for l in myfile:
            if time_flag:
                time_flag = False
                if ignore: continue
                time_series = l.strip().split(', ')
                # for time in time_series:
                #     layer_config_kernel[layer_name][problem][kernel].append(float(time))
                continue
            layer = l.strip().split('-')
            if layer[0] in kernels:
                kernel = layer[0]
                if len(layer) > 1 and layer[1].startswith("stride2"):
                    stride = 2
                else:
                    stride = 1
            elif l.strip().startswith("{"):
                parameters = l.strip().replace('{', '').replace('}', '').split(', ')
                K = int(parameters[0].split(': ')[-1].strip("'")) 
                H = int(parameters[1].split(': ')[-1].strip("'"))
                W = int(parameters[2].split(': ')[-1].strip("'"))
                C = int(parameters[3].split(': ')[-1].strip("'"))
                R = int(parameters[4].split(': ')[-1].strip("'"))
                problem = "C:" + str(C) + ", H:" + str(H) + ", W:" + str(W) + ", R:" + str(R) + ", K:" + str(K) + ", stride:" + str(stride)
                if problem not in mapping: ignore = True
                else:
                    layer_name = mapping[problem].split('-')[0].strip('net')
                    OPs = K * H * W * C * R * R * 2
                    mapping_name = mapping[problem]
                    problem += ", OPs:" + str(OPs) + '_' + mapping[problem]
                    ignore = False
                    
                    #print(type(kernel))
                    if kernel == "RSkernel":
                        TK = int(parameters[5].split(': ')[-1].strip("'")) 
                        TH = int(parameters[6].split(': ')[-1].strip("'")) 
                        TW = int(parameters[7].split(': ')[-1].strip("'")) 
                        BK = int(parameters[8].split(': ')[-1].strip("'")) 
                        BH = int(parameters[9].split(': ')[-1].strip("'"))
                        BW = int(parameters[10].split(': ')[-1].strip("'"))
                        Cmult = int(parameters[11].split(': ')[-1].strip("'"))
                    elif kernel == "SKernel":
                        print("??")
                        TH = int(parameters[5].split(': ')[-1].strip("'")) 
                        TW = int(parameters[6].split(': ')[-1].strip("'")) 
                        TK = int(parameters[7].split(': ')[-1].strip("'")) 
                        WH = int(parameters[8].split(': ')[-1].strip("'")) 
                        WW = int(parameters[9].split(': ')[-1].strip("'"))
                        WK = int(parameters[10].split(': ')[-1].strip("'"))
                        BH = int(parameters[11].split(': ')[-1].strip("'")) 
                        BW = int(parameters[12].split(': ')[-1].strip("'"))
                        BK = int(parameters[13].split(': ')[-1].strip("'"))    
                        reproduce_code_Sker(K, H, W, C, R, R, TH, TW, TK, WH, WW, WK, BH, BW, BK, mapping_name)           
                    elif kernel == "new1x1":
                        assert True, "SKIP now"
                    else:
                        assert False, "unknown kernel"+kernel
                


            elif l.strip().startswith("time"):
                time_flag = True
    #return layer_config_kernel

def reproduce_code_Sker(K, H, W, C, R, S, Th, Tw, Tk, Wh, Ww, Wk, Bh, Bw, Bk, filename):
    print("call ??")
    gen_files(K, H, W, C, R, S, Th, Tw, Tk, Wh, Ww, Wk, Bh, Bw, Bk, 128, filename)

    create_cmake(K, H, W, C, R, S, Th, Tw, Tk, Wh, Ww, Wk, Bh, Bw, Bk, 128, filename)
    path = os.getcwd()
    compile_code(path + "/build")
    doLaunch(path + "/build", path + "/build/timesForProblem" + filename + ".txt", filename, 128 )
    time.sleep(10)



def compile_code(filePathOutput):
    try:
        os.makedirs(filePathOutput, exist_ok=True)
        res = subprocess.run("cmake ..", shell=True, cwd=filePathOutput)
        if res.returncode != 0: print("Cmake failed")
        res = subprocess.run("make -j32 > makeDump.txt 2>&1", shell=True, timeout=10.0, cwd=filePathOutput)
        if res.returncode != 0: print("make failed")
    except Exception as e:
        print("failure in compile", e)


def create_cmake(K, H, W, C, R, S, Th, Tw, Tk, Wh, Ww, Wk, Bh, Bw, Bk, RegLim, filename):
    HPrime = H + R - 1
    WPrime = W + S - 1
    ITw = Tw + S - 1
    SMH = Th * Bh * Wh + R - 1
    SMW = Tw * Bw * Ww + S - 1
    CMult = 1
    BKcvg = int(K / (Tk * Bk * Wk))
    CDivSize = int(C / CMult)

    #filename = str(K) + "x" + str(H) + "x" + str(W) + "_" + str(C) + "_" + str(R)
    registersUsed_per_thread = Th * Tw * Tk + (Tw + R - 1) + 2
    RegLim = max(registersUsed_per_thread, RegLim)


    cmake_header = """
    cmake_minimum_required(VERSION 3.12)
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

    exeNew = "add_executable(CSGSorted.timesForProblem" + filename + " main.cpp " + "CSG" + filename + ".cu) \n"
    setProperties = "set_target_properties(CSGSorted.timesForProblem" + filename + " PROPERTIES COMPILE_FLAGS  \"${CUDAPROBLEMSIZE} ${CUDATUNINGP} ${PROGFLAG}  -fopenmp \") \n"
    compileOption = "target_compile_options(CSGSorted.timesForProblem" + filename + " PRIVATE $<$<COMPILE_LANGUAGE:CUDA>:-O3 -arch=sm_70 -res-usage -lineinfo -maxrregcount {} >) \n".format(RegLim)


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


def doLaunch(filePathOutput, fileNameOutput, filename, reg):
    # subprocess.run("echo reg" + str(reg) + ">> " + fileNameOutput + " 2>&1", cwd=filePathOutput,
    #                shell=True)
    subprocess.run("./CSGSorted.timesForProblem" + filename + ">> " + fileNameOutput + " 2>&1", cwd=filePathOutput,
                   shell=True, timeout=25.0)
    return


def gen_files( K, H, W, C, R, S, Th, Tw, Tk, Wh, Ww, Wk, Bh, Bw, Bk, RegLim, filename):
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

    #filename = str(K) + "x" + str(H) + "x" + str(W) + "_" + str(C) + "_" + str(R)

    outfCSG = open("CSG" + filename + ".cu", "w")
    outfCSG.write(newPGM)
    outfCSG.write("\n")
    outfCSG.write("\n")
    function_wrapper = open("wrapper_time.code", "r").read()
    outfCSG.write(function_wrapper)
    outfCSG.flush()
    outfCSG.close()




if __name__ == "__main__":

    # output_size:layer_name
    Problem_Layer_Mapping = {"C:3, H:544, W:544, R:3, K:32, stride:1":"yolo-0", "C:32, H:272, W:272, R:3, K:64, stride:1":"yolo-1", \
    "C:64, H:136, W:136, R:3, K:128, stride:1":"yolo-2", "C:128, H:136, W:136, R:1, K:64, stride:1":"yolo-3", "C:128, H:68, W:68, R:3, K:256, stride:1":"yolo-4", \
    "C:256, H:68, W:68, R:1, K:128, stride:1":"yolo-5", "C:256, H:34, W:34, R:3, K:512, stride:1":"yolo-6", "C:512, H:34, W:34, R:1, K:256, stride:1":"yolo-7", \
    "C:512, H:17, W:17, R:3, K:1024, stride:1":"yolo-8", "C:1024, H:17, W:17, R:1, K:512, stride:1":"yolo-9", "C:3, H:112, W:112, R:7, K:64, stride:2":"resnet-1", \
    "C:64, H:56, W:56, R:3, K:64, stride:1":"resnet-2", "C:64, H:56, W:56, R:1, K:64, stride:1":"resnet-3", "C:64, H:28, W:28, R:3, K:128, stride:2":"resnet-4", \
    "C:64, H:28, W:28, R:1, K:128, stride:2":"resnet-5", "C:128, H:28, W:28, R:3, K:128, stride:1":"resnet-6", "C:128, H:14, W:14, R:3, K:256, stride:2":"resnet-7", \
    "C:128, H:14, W:14, R:1, K:256, stride:2":"resnet-8", "C:256, H:14, W:14, R:3, K:256, stride:1":"resnet-9", "C:256, H:7, W:7, R:3, K:512, stride:2":"resnet-10", \
    "C:256, H:7, W:7, R:1, K:512, stride:2":"resnet-11", "C:512, H:7, W:7, R:3, K:512, stride:1":"resnet-12", "C:3, H:108, W:108, R:3, K:32, stride:1":"defo-0", \
    "C:32, H:108, W:108, R:3, K:32, stride:1":"defo-1", "C:32, H:54, W:54, R:3, K:64, stride:1":"defo-2", "C:64, H:54, W:54, R:3, K:64, stride:1":"defo-3", \
    "C:64, H:27, W:27, R:3, K:128, stride:1":"defo-4", "C:128, H:27, W:27, R:3, K:128, stride:1":"defo-5"}

    file_name1 = "time_record_best_config.txt"
    layer_config_kernel = data_extraction1(file_name1, Problem_Layer_Mapping)
   
