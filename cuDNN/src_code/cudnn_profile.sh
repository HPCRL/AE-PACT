#!/bin/bash

printf "[3] Defonet cudnn_dp_ref ref\n"
printf "\n==== Start Execution 0 ====="
python pcc.py 1 110 110 32 3 3 3 1 0 cdefo1
sleep 10
printf "\n==== Start Execution 1 ====="
python pcc.py 1 110 110 32 32 3 3 1 0 cdefo2
sleep 10
printf "\n==== Start Execution 2 ====="
python pcc.py 1 56 56 64 32 3 3 1 0 cdefo3
sleep 10
printf "\n==== Start Execution 3 ====="
python pcc.py 1 56 56 64 64 3 3 1 0 cdefo4
sleep 10
printf "\n==== Start Execution 4 ====="
python pcc.py 1 29 29 128 64 3 3 1 0 cdefo5
sleep 10
printf "\n==== Start Execution 5 ====="
python pcc.py 1 29 29 128 128 3 3 1 0 cdefo6
sleep 10
printf "\n Defo DONE ----\n"

printf "[2] Resnet cudnn_ref ref\n"
printf "\n==== Start Execution 1 ====="
python pcc.py 1 230 230 64 3 7 7 2 0 cres1
sleep 10
printf "\n==== Start Execution 2 ====="
python pcc.py 1 58 58 64 64 3 3 1 0 cres2
sleep 10
printf "\n==== Start Execution 3 ====="
python pcc.py 1 56 56 64 64 1 1 1 0 cres3
sleep 10
printf "\n==== Start Execution 4 ====="
python pcc.py 1 58 58 128 64 3 3 2 0 cres4
sleep 10
printf "\n==== Start Execution 5 ====="
python pcc.py 1 56 56 128 64 1 1 2 0 cres5
sleep 10
printf "\n==== Start Execution 6 ====="
python pcc.py 1 30 30 128 128 3 3 1 0 cres6
sleep 10
printf "\n==== Start Execution 7 ====="
python pcc.py 1 30 30 256 128 3 3 2 0 cres7
sleep 10
printf "\n==== Start Execution 8 ====="
python pcc.py 1 28 28 256 128 1 1 2 0 cres8
sleep 10
printf "\n==== Start Execution 9 ====="
python pcc.py 1 16 16 256 256 3 3 1 0 cres9
sleep 10
printf "\n==== Start Execution 10 ====="
python pcc.py 1 16 16 512 256 3 3 2 0 cres10
sleep 10
printf "\n==== Start Execution 11 ====="
python pcc.py 1 14 14 512 256 1 1 2 0 cres11
sleep 10
printf "\n==== Start Execution 12 ====="
python pcc.py 1 9 9 512 512 3 3 1 0 cres12
printf "\n Resnet DONE ----\n"


echo "[1] Yolo cudnn_ref ref\n"
printf "\n==== Start Execution 0 ====="
python pcc.py 1 546 546 32 3 3 3 1 0 cyolo0
sleep 10
printf "\n==== Start Execution 1 ====="
python pcc.py 1 274 274 64 32 3 3 1 0 cyolo1
sleep 10
printf "\n==== Start Execution 2 ====="
python pcc.py 1 138 138 128 64 3 3 1 0 cyolo2
sleep 10
printf "\n==== Start Execution 3 ====="
python pcc.py 1 136 136 64 128 1 1 1 0 cyolo3
sleep 10
printf "\n==== Start Execution 4 ====="
python pcc.py 1 70 70 256 128 3 3 1 0 cyolo4
sleep 10
printf "\n==== Start Execution 5 ====="
python pcc.py 1 68 68 128 256 1 1 1 0 cyolo5
sleep 10
printf "\n==== Start Execution 6 ====="
python pcc.py 1 36 36 512 256 3 3 1 0 cyolo6
sleep 10
printf "\n==== Start Execution 7 ====="
python pcc.py 1 34 34 256 512 1 1 1 0 cyolo7
sleep 10
printf "\n==== Start Execution 8 ====="
python pcc.py 1 19 19 1024 512 3 3 1 0 cyolo8
sleep 10
printf "\n==== Start Execution 9 ====="
python pcc.py 1 17 17 512 1024 1 1 1 0 cyolo9
sleep 10

 printf "\n Yolo DONE ----\n"
