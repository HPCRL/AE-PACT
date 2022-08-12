#!/bin/bash 


# Problem size trials K H W C RS FolderName
time python3 calcAndExecuteCSG.py 32 544 544 3 3 resYolo
time python3 calcAndExecuteCSG.py 64 272 272 32 3 resYolo
time python3 calcAndExecuteCSG.py 128 136 136 64 3 resYolo
time python3 calcAndExecuteCSG.py 256 68 68 128 3 resYolo
time python3 calcAndExecuteCSG.py 512 34 34 256 3 resYolo
time python3 calcAndExecuteCSG.py 1024 17 17 512 3 resYolo


