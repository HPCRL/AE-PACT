#!/bin/bash

cd build/

printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full --csv ./Defo0 1 110 110 32 3 3 3 1 0 2>&1 | tee adefo0.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full --csv ./Defo1 1 110 110 32 32 3 3 1 0 2>&1 | tee adefo1.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full --csv ./Defo2 1 56 56 64 32 3 3 1 0  2>&1 | tee adefo2.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full --csv ./Defo3 1 56 56 64 64 3 3 1 0 2>&1 | tee adefo3.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full --csv ./Defo4 1 29 29 128 64 3 3 1 0 2>&1 | tee adefo4.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full --csv ./Defo5 1 29 29 128 128 3 3 1 0 2>&1 | tee adefo5.csv
sleep 10