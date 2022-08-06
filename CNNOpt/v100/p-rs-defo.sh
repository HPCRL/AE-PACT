printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full -o defo0 ./CSGdefo-0
ncu --details-all --set full --csv ./CSGdefo-0 2>&1 | tee defo0.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full -o defo1 ./CSGdefo-1
ncu --details-all --set full --csv ./CSGdefo-1 2>&1 | tee defo1.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full -o defo2 ./CSGdefo-2
ncu --details-all --set full --csv ./CSGdefo-2 2>&1 | tee defo2.csv
sleep 10
printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full -o defo3 ./CSGdefo-3
ncu --details-all --set full --csv ./CSGdefo-3 2>&1 | tee defo3.csv
sleep 10

printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full -o defo4 ./CSGdefo-4
ncu --details-all --set full --csv ./CSGdefo-4 2>&1 | tee defo4.csv
sleep 10

printf "\n==== Start Execution DD2 ====="
ncu --details-all --set full -o defo5 ./CSGdefo-5
ncu --details-all --set full --csv ./CSGdefo-5 2>&1 | tee defo5.csv
sleep 10
