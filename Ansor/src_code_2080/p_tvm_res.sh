#!/bin/bash

cd build/

printf "[2] Resnet cudnn ref\n"
printf "\n==== Start Execution 1 ====="
ncu --details-all --set full --csv ./Resnet1 1 230 230 64 3 7 7 2 0 2>&1 | tee ares1.csv
sleep 10
printf "\n==== Start Execution 2 ====="
ncu --details-all --set full --csv ./Resnet2 1 58 58 64 64 3 3 1 0 2>&1 | tee ares2.csv
sleep 10
printf "\n==== Start Execution 3 ====="
ncu --details-all --set full --csv ./Resnet3 1 56 56 64 64 1 1 1 0 2>&1 | tee ares3.csv
sleep 10
printf "\n==== Start Execution 4 ====="
ncu --details-all --set full --csv ./Resnet4 1 58 58 128 64 3 3 2 0 2>&1 | tee ares4.csv
sleep 10
printf "\n==== Start Execution 5 ====="
ncu --details-all --set full --csv ./Resnet5 1 56 56 128 64 1 1 2 0 2>&1 | tee ares5.csv
sleep 10
printf "\n==== Start Execution 6 ====="
ncu --details-all --set full --csv ./Resnet6 1 30 30 128 128 3 3 1 0 2>&1 | tee ares6.csv
sleep 10
printf "\n==== Start Execution 7 ====="
ncu --details-all --set full --csv ./Resnet7 1 30 30 256 128 3 3 2 0 2>&1 | tee ares7.csv
sleep 10
printf "\n==== Start Execution 8 ====="
ncu --details-all --set full --csv ./Resnet8 1 28 28 256 128 1 1 2 0 2>&1 | tee ares8.csv
sleep 10
printf "\n==== Start Execution 9 ====="
ncu --details-all --set full --csv ./Resnet9 1 16 16 256 256 3 3 1 0 2>&1 | tee ares9.csv
sleep 10
printf "\n==== Start Execution 10 ====="
ncu --details-all --set full --csv ./Resnet10 1 16 16 512 256 3 3 2 0 2>&1 | tee ares10.csv
sleep 10
printf "\n==== Start Execution 11 ====="
ncu --details-all --set full --csv ./Resnet11 1 14 14 512 256 1 1 2 0 2>&1 | tee ares11.csv
sleep 10
printf "\n==== Start Execution 12 ====="
ncu --details-all --set full --csv ./Resnet12 1 9 9 512 512 3 3 1 0 2>&1 | tee ares12.csv
printf "\n Resnet DONE ----\n"
