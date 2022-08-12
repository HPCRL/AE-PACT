#!/bin/bash

echo "[1] Yolo cudnn ref\n"
printf "\n==== Start Execution 0 ====="
ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-0 2>&1 | tee Syolo0.csv
sleep 10
printf "\n==== Start Execution 1 ====="
ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-1 2>&1 | tee Syolo1.csv
sleep 10
printf "\n==== Start Execution 2 ====="
ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-2 2>&1 | tee Syolo2.csv
sleep 10
printf "\n==== Start Execution 4 ====="
ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-4 2>&1 | tee Syolo4.csv
sleep 10
printf "\n==== Start Execution 6 ====="
ncu --details-all --set full --csv ./CSGSorted.timesForProblemyolo-6 2>&1 | tee Syolo6.csv
sleep 10


printf "\n==== Start Execution r2 ====="
ncu --details-all --set full --csv ./CSGSorted.timesForProblemresnet-2 2>&1 | tee Sres2.csv
sleep 10
printf "\n==== Start Execution r6 ====="
ncu --details-all --set full --csv ./CSGSorted.timesForProblemresnet-6 2>&1 | tee Sres6.csv
sleep 10
printf "\n==== Start Execution r9 ====="
ncu --details-all --set full --csv ./CSGSorted.timesForProblemresnet-9 2>&1 | tee Sres9.csv
sleep 10




printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full --csv ./CSGSorted.timesForProblemdefo-0 2>&1 | tee Sdefo0.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full --csv ./CSGSorted.timesForProblemdefo-1 2>&1 | tee Sdefo1.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full --csv ./CSGSorted.timesForProblemdefo-2 2>&1 | tee Sdefo2.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full --csv ./CSGSorted.timesForProblemdefo-3 2>&1 | tee Sdefo3.csv
sleep 10



 printf "\n RRR DONE ----\n"
