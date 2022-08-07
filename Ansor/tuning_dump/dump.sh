#!/bin/bash
# iH, iW, K, C, R,S, stride, pad

printf "\n==== Start Execution 0 ====="
time python3 dump_cuda.py 1 546 546 32 3 3 3 1 0 2000 YOLO0.log 2>&1 | tee YOLO0.code
printf "\n==== Start Execution 1 ====="
time python3 dump_cuda.py 1 274 274 64 32 3 3 1 0 2000 YOLO1.log 2>&1 | tee YOLO1.code
printf "\n==== Start Execution 2 ====="
time python3 dump_cuda.py 1 138 138 128 64 3 3 1 0 2000 YOLO2.log 2>&1 | tee YOLO2.code
printf "\n==== Start Execution 3 ====="
time python3 dump_cuda.py 1 136 136 64 128 1 1 1 0 2000 YOLO3.log 2>&1 | tee YOLO3.code
printf "\n==== Start Execution 4 ====="
time python3 dump_cuda.py 1 70 70 256 128 3 3 1 0 2000 YOLO4.log 2>&1 | tee YOLO4.code
printf "\n==== Start Execution 5 ====="
time python3 dump_cuda.py 1 68 68 128 256 1 1 1 0 2000 YOLO5.log 2>&1 | tee YOLO5.code
printf "\n==== Start Execution 6 ====="
time python3 dump_cuda.py 1 36 36 512 256 3 3 1 0 2000 YOLO6.log 2>&1 | tee YOLO6.code
printf "\n==== Start Execution 7 ====="
time python3 dump_cuda.py 1 34 34 256 512 1 1 1 0 2000 YOLO7.log 2>&1 | tee YOLO7.code
printf "\n==== Start Execution 8 ====="
time python3 dump_cuda.py 1 19 19 1024 512 3 3 1 0 2000 YOLO8.log 2>&1 | tee YOLO8.code
printf "\n==== Start Execution 9 ====="
time python3 dump_cuda.py 1 17 17 512 1024 1 1 1 0 2000 YOLO9.log 2>&1 | tee YOLO9.code



printf "\n==== Start Execution 1 ====="
time python3 dump_cuda.py 1 230 230 64 3 7 7 2 0 2000 Resnet1.log 2>&1 | tee Resnet1.code
printf "\n==== Start Execution 2 ====="
time python3 dump_cuda.py 1 58 58 64 64 3 3 1 0 2000 Resnet2.log 2>&1 | tee Resnet2.code
printf "\n==== Start Execution 3 ====="
time python3 dump_cuda.py 1 56 56 64 64 1 1 1 0 2000 Resnet3.log 2>&1 | tee Resnet3.code
printf "\n==== Start Execution 4 ====="
time python3 dump_cuda.py 1 58 58 128 64 3 3 2 0 2000 Resnet4.log 2>&1 | tee Resnet4.code
printf "\n==== Start Execution 5 ====="
time python3 dump_cuda.py 1 56 56 128 64 1 1 2 0 2000 Resnet5.log 2>&1 | tee Resnet5.code
printf "\n==== Start Execution 6 ====="
time python3 dump_cuda.py 1 30 30 128 128 3 3 1 0 2000 Resnet6.log 2>&1 | tee Resnet6.code
printf "\n==== Start Execution 7 ====="
time python3 dump_cuda.py 1 30 30 256 128 3 3 2 0 2000 Resnet7.log 2>&1 | tee Resnet7.code
printf "\n==== Start Execution 8 ====="
time python3 dump_cuda.py 1 28 28 256 128 1 1 1 0 2000 Resnet8.log 2>&1 | tee Resnet8.code
printf "\n==== Start Execution 9 ====="
time python3 dump_cuda.py 1 16 16 256 256 3 3 1 0 2000 Resnet9.log 2>&1 | tee Resnet9.code
printf "\n==== Start Execution 10 ====="
time python3 dump_cuda.py 1 16 16 512 256 3 3 2 0 2000 Resnet10.log 2>&1 | tee Resnet10.code
printf "\n==== Start Execution 11 ====="
time python3 dump_cuda.py 1 14 14 512 256 1 1 2 0 2000 Resnet11.log 2>&1 | tee Resnet11.code
printf "\n==== Start Execution 12 ====="
time python3 dump_cuda.py 1 9 9 512 512 3 3 1 0 2000 Resnet12.log 2>&1 | tee Resnet12.code



printf "\n==== Start Execution 0 ====="
time python3 dump_cuda.py 1 110 110 32 3 3 3 1 0 2000 Defo0.log 2>&1 | tee Defo0.code
printf "\n==== Start Execution 1 ====="
time python3 dump_cuda.py 1 56 56 64 32 3 3 1 0 2000 Defo1.log 2>&1 | tee Defo1.code
printf "\n==== Start Execution 2 ====="
time python3 dump_cuda.py 1 29 29 128 64 3 3 1 0 2000 Defo2.log 2>&1 | tee Defo2.code
printf "\n==== Start Execution 01 ====="
time python3 dump_cuda.py 1 110 110 32 32 3 3 1 0 2000 Defo01.log 2>&1 | tee Defo01.code
printf "\n==== Start Execution 11 ====="
time python3 dump_cuda.py 1 56 56 64 64 3 3 1 0 2000 Defo11.log 2>&1 | tee Defo11.code
printf "\n==== Start Execution 21 ====="
time python3 dump_cuda.py 1 29 29 128 128 3 3 1 0 2000 Defo21.log 2>&1 | tee Defo21.code


