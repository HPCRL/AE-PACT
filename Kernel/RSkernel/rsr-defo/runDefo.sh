#!/bin/bash 

echo $CUDACXX
# Problem size trials K H W C RS FolderName
echo "Defo 0"
time python3 calcAndExecuteCSG.py 32 108 108 3 3 resDefo
echo "Defo 1"
time python3 calcAndExecuteCSG.py 32 108 108 32 3 resDefo
echo "Defo 2"
time python3 calcAndExecuteCSG.py 64 54 54 32 3 resDefo
echo "Defo 3"
time python3 calcAndExecuteCSG.py 64 54 54 64 3 resDefo
echo "Defo 4"
time python3 calcAndExecuteCSG.py 128 27 27 64 3 resDefo
echo "Defo 5"
time python3 calcAndExecuteCSG.py 128 27 27 128 3 resDefo
