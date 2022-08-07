import os
import sys
cudnnAlgName = [
    "CUDNN_CONVOLUTION_FWD_ALGO_IMPLICIT_GEMM",
    "CUDNN_CONVOLUTION_FWD_ALGO_IMPLICIT_PRECOMP_GEMM",
    "CUDNN_CONVOLUTION_FWD_ALGO_GEMM",
    "CUDNN_CONVOLUTION_FWD_ALGO_DIRECT",
    "CUDNN_CONVOLUTION_FWD_ALGO_FFT",
    "CUDNN_CONVOLUTION_FWD_ALGO_FFT_TILING",
    "CUDNN_CONVOLUTION_FWD_ALGO_WINOGRAD",
    "CUDNN_CONVOLUTION_FWD_ALGO_WINOGRAD_NONFUSED",
    "CUDNN_CONVOLUTION_FWD_ALGO_COUNT"
]


def match_rule(arr):
    for i in range(0, len(arr)):
        m_value = arr[i]
        if m_value == "gpu__time_duration.avg":
            #print(arr[i], "--->", arr[i+4])
            if "," in arr[i+4]:
                out = arr[i+4].replace(',', '')
            else:
                out = arr[i+4]
            return m_value, float(out)
    return "",""

def get_ps_algo(fn):
    indx = fn.index("-")
    ps = fn[0:indx+5].strip()
    algo = fn[-1].strip()

    return ps, int(algo)

def get_duration(path):
    count = 0
    with open(path) as fp:
        Lines = fp.readlines()
        val_list = []
        for line in Lines:
            count += 1
            value_array = line.split("\"")
            _, val = match_rule(value_array)
            if val != "":
                val_list.append(val)
    total_exe_duration = sum(val_list)
    return total_exe_duration

res_table = {}

def process_f(path):
    for file in sorted(os.listdir(path)):
        if file.endswith(".csv"):
            filename = os.path.splitext(file)[0]
            ps, algo = get_ps_algo(filename)
            total_exe_duration = get_duration(path+"/"+file)
            #print("~~ filename : ", filename, ps, cudnnAlgName[algo], total_exe_duration)

            if ps in res_table.keys():
                res_table[ps].append((cudnnAlgName[algo], total_exe_duration) )
            else:
                algo_v_list = []
                algo_v_list.append((cudnnAlgName[algo], total_exe_duration) )
                res_table[ps] = algo_v_list


def get_fastest_gemm(res_table):
    for ps, v_list in res_table.items():
        max_per_algo = 9999999999
        max_algo_name = ""
        for pp in v_list:
            if "FFT" not in pp[0] and "WIN" not in pp[0]:
                #filter out non gemm algo
                if pp[1] <= max_per_algo and pp[1] > 0:
                    max_per_algo = pp[1]
                    max_algo_name = pp[0]

        print("{}, {}, {}".format(ps, max_algo_name, max_per_algo))




if __name__ == '__main__':
    machine_label = sys.argv[1]
    cudnn_folder = "cuDNN/profile-"+machine_label+"/"
    process_f(cudnn_folder)
    get_fastest_gemm(res_table)
