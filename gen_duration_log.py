from platform import machine
import subprocess
import os


def get_duration_log(filePathOutput):
    try:
        os.makedirs(filePathOutput, exist_ok=True)
        res = subprocess.run("bash compare-ansor-cnnopt-2080.sh >"+ filePathOutput+"2080-ansor-cnnopt.log", shell=True, timeout=100.0, cwd=os.getcwd())
        if res.returncode != 0: print("bash failed")
        
        res = subprocess.run("bash compare-ansor-cnnopt-v100.sh >"+ filePathOutput+"v100-ansor-cnnopt.log", shell=True, timeout=100.0, cwd=os.getcwd())
        if res.returncode != 0: print("bash failed")

        res = subprocess.run("python get_duration_cudnn.py 2080 >"+ filePathOutput+"2080-cudnn.log", shell=True, timeout=100.0, cwd=os.getcwd())
        if res.returncode != 0: print("bash failed")

        res = subprocess.run("python get_duration_cudnn.py v100 >"+ filePathOutput+"v100-cudnn.log", shell=True, timeout=100.0, cwd=os.getcwd())
        if res.returncode != 0: print("bash failed")
    except Exception as e:
        print("failure in compile", e)


if __name__ == '__main__':
    path = os.getcwd()
    get_duration_log(path+'/dlog/')