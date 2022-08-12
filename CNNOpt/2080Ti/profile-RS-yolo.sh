#!/bin/bash

echo "[1] Yolo cudnn ref\n"
printf "\n==== Start Execution 0 ====="
ncu --details-all --set full --csv ./CSGyolo-0 2>&1 | tee yolo0.csv
sleep 10
printf "\n==== Start Execution 1 ====="
ncu --details-all --set full --csv ./CSGyolo-1 2>&1 | tee yolo1.csv
sleep 10
printf "\n==== Start Execution 2 ====="
ncu --details-all --set full --csv ./CSGyolo-2 2>&1 | tee yolo2.csv
sleep 10
printf "\n==== Start Execution 4 ====="
ncu --details-all --set full --csv ./CSGyolo-4 2>&1 | tee yolo4.csv
sleep 10
printf "\n==== Start Execution 6 ====="
ncu --details-all --set full --csv ./CSGyolo-6 2>&1 | tee yolo6.csv
sleep 10
printf "\n==== Start Execution 8 ====="
ncu --details-all --set full --csv ./CSGyolo-8 2>&1 | tee yolo8.csv
sleep 10

printf "\n Yolo DONE ----\n"
