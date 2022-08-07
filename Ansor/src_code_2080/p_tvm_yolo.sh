#!/bin/bash

cd build/


echo "[1] Yolo cudnn ref\n"
printf "\n==== Start Execution 0 ====="
ncu --details-all --set full --csv ./YOLO0 1 546 546 32 3 3 3 1 0 2>&1 | tee ayolo0.csv
sleep 10
# printf "\n==== Start Execution 1 ====="
# ncu --details-all --set full --csv ./YOLO1 1 274 274 64 32 3 3 1 0 2>&1 | tee ayolo1.csv
# sleep 10
# printf "\n==== Start Execution 2 ====="
# ncu --details-all --set full -o ayolo2 ./YOLO2 1 138 138 128 64 3 3 1 0
# ncu --details-all --set full --csv ./YOLO2 1 138 138 128 64 3 3 1 0 2>&1 | tee ayolo2.csv
# sleep 10
# printf "\n==== Start Execution 3 ====="
# ncu --details-all --set full -o ayolo3 ./YOLO3 1 136 136 64 128 1 1 1 0
# ncu --details-all --set full --csv ./YOLO3 1 136 136 64 128 1 1 1 0 2>&1 | tee ayolo3.csv
# sleep 10
# printf "\n==== Start Execution 4 ====="
# ncu --details-all --set full -o ayolo4 ./YOLO4 1 70 70 256 128 3 3 1 0
# ncu --details-all --set full --csv ./YOLO4 1 70 70 256 128 3 3 1 0 2>&1 | tee ayolo4.csv
# sleep 10
# printf "\n==== Start Execution 5 ====="
# ncu --details-all --set full -o ayolo5 ./YOLO5 1 68 68 128 256 1 1 1 0
# ncu --details-all --set full --csv ./YOLO5 1 68 68 128 256 1 1 1 0 2>&1 | tee ayolo5.csv
# sleep 10
# printf "\n==== Start Execution 6 ====="
# ncu --details-all --set full -o ayolo6 ./YOLO6 1 36 36 512 256 3 3 1 0
# ncu --details-all --set full --csv ./YOLO6 1 36 36 512 256 3 3 1 0 2>&1 | tee ayolo6.csv
# sleep 10
# printf "\n==== Start Execution 7 ====="
# ncu --details-all --set full -o ayolo7 ./YOLO7 1 34 34 256 512 1 1 1 0
# ncu --details-all --set full --csv ./YOLO7 1 34 34 256 512 1 1 1 0 2>&1 | tee ayolo7.csv
# sleep 10
# printf "\n==== Start Execution 8 ====="
# ncu --details-all --set full -o ayolo8 ./YOLO8 1 19 19 1024 512 3 3 1 0
# ncu --details-all --set full --csv ./YOLO8 1 19 19 1024 512 3 3 1 0 2>&1 | tee ayolo8.csv
# sleep 10
# printf "\n==== Start Execution 9 ====="

# ncu --details-all --set full -o ayolo9 ./YOLO9 1 17 17 512 1024 1 1 1 0
# ncu --details-all --set full --csv ./YOLO9 1 17 17 512 1024 1 1 1 0 2>&1 | tee ayolo9.csv


printf "\n Yolo DONE ----\n"
