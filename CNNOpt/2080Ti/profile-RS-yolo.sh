#!/bin/bash

echo "[1] Yolo cudnn ref\n"
printf "\n==== Start Execution 0 ====="
ncu --details-all --set full -o yolo0 ./CSGyolo-0
ncu --details-all --set full --csv ./CSGyolo-0 2>&1 | tee yolo0.csv
sleep 10
printf "\n==== Start Execution 1 ====="
ncu --details-all --set full -o yolo1 ./CSGyolo-1
ncu --details-all --set full --csv ./CSGyolo-1 2>&1 | tee yolo1.csv
sleep 10
printf "\n==== Start Execution 2 ====="
ncu --details-all --set full -o yolo2 ./CSGyolo-2
ncu --details-all --set full --csv ./CSGyolo-2 2>&1 | tee yolo2.csv
sleep 10
printf "\n==== Start Execution 3 ====="
ncu --details-all --set full -o yolo3 ./CSGyolo-3
ncu --details-all --set full --csv ./CSGyolo-3 2>&1 | tee yolo3.csv
sleep 10
printf "\n==== Start Execution 4 ====="
ncu --details-all --set full -o yolo4 ./CSGyolo-4
ncu --details-all --set full --csv ./CSGyolo-4 2>&1 | tee yolo4.csv
sleep 10
printf "\n==== Start Execution 5 ====="
ncu --details-all --set full -o yolo5 ./CSGyolo-5
ncu --details-all --set full --csv ./CSGyolo-5 2>&1 | tee yolo5.csv
sleep 10
printf "\n==== Start Execution 6 ====="
ncu --details-all --set full -o yolo6 ./CSGyolo-6
ncu --details-all --set full --csv ./CSGyolo-6 2>&1 | tee yolo6.csv
sleep 10
printf "\n==== Start Execution 7 ====="
ncu --details-all --set full -o yolo7 ./CSGyolo-7
ncu --details-all --set full --csv ./CSGyolo-7 2>&1 | tee yolo7.csv
sleep 10
printf "\n==== Start Execution 8 ====="
ncu --details-all --set full -o yolo8 ./CSGyolo-8
ncu --details-all --set full --csv ./CSGyolo-8 2>&1 | tee yolo8.csv
sleep 10
printf "\n==== Start Execution 9 ====="

ncu --details-all --set full -o yolo9 ./CSGyolo-9
ncu --details-all --set full --csv ./CSGyolo-9 2>&1 | tee yolo9.csv


# printf "\n==== Start Execution 10 ====="
#./YOLO10 1 17 17 28269 1024 1 1 1 0
printf "\n Yolo DONE ----\n"
