#!/bin/bash 
# Problem size trials K H W C RS FolderName
python3 calcAndExecuteCSG.py 64 112 112 3 7 resS2
python3 calcAndExecuteCSG.py 128 28 28 64 3 resS2
python3 calcAndExecuteCSG.py 256 14 14 128 3 resS2
python3 calcAndExecuteCSG.py 512 7 7 256 3 resS2




