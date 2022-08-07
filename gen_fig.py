from platform import machine
import subprocess
import os
import sys
import math

from bar import drawline


def get_ansor_cnnopt_res_table(filePathOutput, machinelabel):
    path = filePathOutput+machinelabel+"-ansor-cnnopt.log"
    ansor_cnnopt_res_list = []
    with open(path) as fp:
        Lines = fp.readlines()
        tmp = []
        for line in Lines:
            if ',' not in line:
                tmp.append(line.strip())
            elif "MM" in line:
                continue
            elif "Duration" in line:
                x = line.strip().split(',')
                tmp.append(x[1].strip())
                tmp.append(x[2].strip())
                ansor_cnnopt_res_list.append(tmp)
                tmp = []
    

    #
    return ansor_cnnopt_res_list


def get_cudnn_res_table(filePathOutput, machinelabel):
    path = filePathOutput+machinelabel+"-cudnn.log"
    cudnn_res_list = []
    with open(path) as fp:
        Lines = fp.readlines()
        tmp = []
        for line in Lines:
            if "CUDNN" in line:
                x = line.strip().split(',')
                name = x[0][1:x[0].index('-')]   
                tmp.append(name)
                tmp.append(x[2].strip())
                cudnn_res_list.append(tmp)
                tmp = []
    

    return cudnn_res_list

def prepare_fig_data(network, machinelabel, res_list):
    ansor_data_list = []
    cudnn_data_list = []
    cnnopt_data_list = []

    lname = []

    for xx in res_list:
        if network in xx[0]:
            lname.append(xx[0])
            ansor_data_list.append(xx[1])
            cnnopt_data_list.append(xx[2])
            cudnn_data_list.append(xx[3])
    
    ansor_vs_ansor = [1]*len(lname)
    cudnn_vs_ansor = []
    cnnopt_vs_ansor = []

    # since the data is absolute duration
    # speedup over throughtput is (1/t_i) / (1/t_base) -->  t_base/t_i
    for i in range(0, len(lname)):
        cudnn_vs_ansor.append( float(ansor_data_list[i])/float(cudnn_data_list[i]))
        cnnopt_vs_ansor.append( float(ansor_data_list[i])/float(cnnopt_data_list[i]))

    # print(ansor_vs_ansor)
    # print(cudnn_vs_ansor)
    # print(cnnopt_vs_ansor)
    anstp = cal_anstp(lname, ansor_data_list)
    print(anstp)

    drawline(cudnn_vs_ansor, ansor_vs_ansor, cnnopt_vs_ansor,anstp,lname, machinelabel+"-"+network)



def cal_anstp(lname, ansor_data_list):
    anstp = []
    ops_map = {
"defo1":20155392,
"defo2":214990848,
"defo3":107495424,
"defo4":214990848,
"defo5":107495424,
"defo6":214990848,

"res1":236027904,
"res2":231211008,
"res4":115605504,
"res6":231211008,
"res7":115605504,
"res9":231211008,
"res10":115605504,
"res12":231211008,

"yolo0":511377408,
"yolo1":2727346176,
"yolo2":2727346176,
"yolo4":2727346176,
"yolo6":2727346176,
"yolo8":2727346176,

    }

    for i in range(0, len(lname)):
        name = lname[i]
        op = ops_map[name]
        time = float(ansor_data_list[i]) #ns
        anstp.append(op/time)
    return anstp



if __name__ == '__main__':
    path = os.getcwd()

    machinelabel = sys.argv[1]
    network = sys.argv[2]

    ansor_cnnopt_res_list = get_ansor_cnnopt_res_table(path+'/dlog/', machinelabel)
    cudnn_res_list = get_cudnn_res_table(path+'/dlog/', machinelabel)


    for i in range(0, len(ansor_cnnopt_res_list)):
        for xx in cudnn_res_list:
            if ansor_cnnopt_res_list[i][0] == xx[0]:
                ansor_cnnopt_res_list[i].append(xx[1])
                break
    

    #print(ansor_cnnopt_res_list)
    prepare_fig_data(network, machinelabel, ansor_cnnopt_res_list)
