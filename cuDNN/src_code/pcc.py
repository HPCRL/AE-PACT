
import subprocess
import os
import sys
import math


def doLaunch(PathOutput, fileNameOutput, args):

    rt = subprocess.run("ncu --target-processes all --metrics gpu__time_duration  --csv ./cudnn_ref " + args + " 2>&1 | tee " + fileNameOutput, cwd=PathOutput,
                   shell=True, timeout=200.0)
    return


if __name__ == '__main__':
    path = os.getcwd()
    PathOutput=path+"/build/"


    #loop all 8 algorithm in cuDNN
    for algo in range(0,8):
        N = (sys.argv[1])
        H = (sys.argv[2])
        W = (sys.argv[3])
        K = (sys.argv[4])
        C = (sys.argv[5])
        r = (sys.argv[6])
        s = (sys.argv[7])
        stride = (sys.argv[8])
        pd = (sys.argv[9])
        filen = (sys.argv[10])
   
        args = N + " " + H +" " + W + " "+K+" "+C+" " + r + " "+s+" "+stride+" "+pd+" " + str(algo)
        fileNameOutput = filen + "-algo"+ str(algo)+".csv"
        print(fileNameOutput)
        doLaunch(PathOutput, fileNameOutput, args)

   