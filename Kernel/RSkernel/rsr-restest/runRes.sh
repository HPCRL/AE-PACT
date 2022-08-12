#!/bin/bash 
echo $CUDACXX
# Problem size trials K H W C RS FolderName
echo "Res 2"
time python3 calcAndExecuteCSG.py 64 56 56 64 3 resRes
echo "Res 6"
time python3 calcAndExecuteCSG.py 128 28 28 128 3 resRes
echo "Res 9"
time python3 calcAndExecuteCSG.py 256 14 14 256 3 resRes
echo "Res 12"
time python3 calcAndExecuteCSG.py 512 7 7 512 3 resRes

