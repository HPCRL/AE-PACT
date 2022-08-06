#!/bin/bash

echo "[1] Yolo cudnn ref\n"
printf "\n==== Start Execution 0 ====="
ncu --details-all --set full -o Syolo0 ./CSGSorted.timesForProblemyolo-0
ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-0 2>&1 | tee Syolo0.csv
sleep 10
printf "\n==== Start Execution 1 ====="
ncu --details-all --set full -o Syolo1 ./CSGSorted.timesForProblemyolo-1
ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-1 2>&1 | tee Syolo1.csv
sleep 10
printf "\n==== Start Execution 2 ====="
ncu --details-all --set full -o Syolo2 ./CSGSorted.timesForProblemyolo-2
ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-2 2>&1 | tee Syolo2.csv
sleep 10
printf "\n==== Start Execution 3 ====="
ncu --details-all --set full -o Syolo3 ./CSGSorted.timesForProblemyolo-4
ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-4 2>&1 | tee Syolo3.csv
sleep 10
printf "\n==== Start Execution 4 ====="
ncu --details-all --set full -o Syolo4 ./CSGSorted.timesForProblemyolo-4
ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-4 2>&1 | tee Syolo4.csv
sleep 10
printf "\n==== Start Execution 5 ====="
ncu --details-all --set full -o Syolo5 ./CSGSorted.timesForProblemyolo-5
ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-5 2>&1 | tee Syolo5.csv
sleep 10
printf "\n==== Start Execution 6 ====="
ncu --details-all --set full -o Syolo6 ./CSGSorted.timesForProblemyolo-6
ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-6 2>&1 | tee Syolo6.csv
sleep 10
printf "\n==== Start Execution 7 ====="
ncu --details-all --set full -o Syolo7 ./CSGSorted.timesForProblemyolo-7
ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-7 2>&1 | tee Syolo7.csv
sleep 10
# printf "\n==== Start Execution 8 ====="
# ncu --details-all --set full -o Syolo8 ./CSGSorted.timesForProblemyolo-8
# ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-8 2>&1 | tee Syolo8.csv
# sleep 10


printf "\n==== Start Execution r2 ====="
ncu --details-all --set full -o Sres2 ./CSGSorted.timesForProblemresnet-2
ncu --details-all --set full --csv ./CSGSorted.timesForProblemresnet-2 2>&1 | tee Sres2.csv
sleep 10
printf "\n==== Start Execution r3 ====="
ncu --details-all --set full -o Sres3 ./CSGSorted.timesForProblemresnet-3
ncu --details-all --set full --csv ./CSGSorted.timesForProblemresnet-3 2>&1 | tee Sres3.csv
sleep 10

printf "\n==== Start Execution r6 ====="
ncu --details-all --set full -o Sres6 ./CSGSorted.timesForProblemresnet-6
ncu --details-all --set full --csv ./CSGSorted.timesForProblemresnet-6 2>&1 | tee Sres6.csv
sleep 10
printf "\n==== Start Execution r9 ====="
ncu --details-all --set full -o Sres9 ./CSGSorted.timesForProblemresnet-9
ncu --details-all --set full --csv ./CSGSorted.timesForProblemresnet-9 2>&1 | tee Sres9.csv
sleep 10




printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full -o Sdefo0 ./CSGSorted.timesForProblemdefo-0
ncu --details-all --set full --csv ./CSGSorted.timesForProblemdefo-0 2>&1 | tee Sdefo0.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full -o Sdefo1 ./CSGSorted.timesForProblemdefo-1
ncu --details-all --set full --csv ./CSGSorted.timesForProblemdefo-1 2>&1 | tee Sdefo1.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full -o Sdefo2 ./CSGSorted.timesForProblemdefo-2
ncu --details-all --set full --csv ./CSGSorted.timesForProblemdefo-2 2>&1 | tee Sdefo2.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full -o Sdefo3 ./CSGSorted.timesForProblemdefo-3
ncu --details-all --set full --csv ./CSGSorted.timesForProblemdefo-3 2>&1 | tee Sdefo3.csv
sleep 10



 printf "\n RRR DONE ----\n"
