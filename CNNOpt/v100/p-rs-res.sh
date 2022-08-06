
#!/bin/bash

printf "[2] Resnet cudnn ref\n"
printf "\n==== Start Execution 1 ====="
ncu --details-all --set full -o res1 ./CSGresnet-1
ncu --details-all --set full --csv ./CSGresnet-1 2>&1 | tee res1.csv
sleep 10
printf "\n==== Start Execution 2 ====="
ncu --details-all --set full -o res2 ./CSGresnet-2
ncu --details-all --set full --csv ./CSGresnet-2 2>&1 | tee res2.csv
sleep 10
printf "\n==== Start Execution 3 ====="
ncu --details-all --set full -o res3 ./CSGresnet-3
ncu --details-all --set full --csv ./CSGresnet-3 2>&1 | tee res3.csv
sleep 10
printf "\n==== Start Execution 4 ====="
ncu --details-all --set full -o res4 ./CSGresnet-4
ncu --details-all --set full --csv ./CSGresnet-4 2>&1 | tee res4.csv
sleep 10
printf "\n==== Start Execution 5 ====="
ncu --details-all --set full -o res5 ./CSGresnet-5
ncu --details-all --set full --csv ./CSGresnet-5 2>&1 | tee res5.csv
sleep 10
printf "\n==== Start Execution 6 ====="
ncu --details-all --set full -o res6 ./CSGresnet-6
ncu --details-all --set full --csv ./CSGresnet-6 2>&1 | tee res6.csv
sleep 10
printf "\n==== Start Execution 7 ====="
ncu --details-all --set full -o res7 ./CSGresnet-7
ncu --details-all --set full --csv ./CSGresnet-7 2>&1 | tee res7.csv

sleep 10
printf "\n==== Start Execution 8 ====="
ncu --details-all --set full -o res8 ./CSGresnet-8
ncu --details-all --set full --csv ./CSGresnet-8 2>&1 | tee res8.csv

sleep 10
printf "\n==== Start Execution 9 ====="
ncu --details-all --set full -o res9 ./CSGresnet-9
ncu --details-all --set full --csv ./CSGresnet-9 2>&1 | tee res9.csv
sleep 10
printf "\n==== Start Execution 10 ====="
ncu --details-all --set full -o res10 ./CSGresnet-10
ncu --details-all --set full --csv ./CSGresnet-10 2>&1 | tee res10.csv

sleep 10
printf "\n==== Start Execution 11 ====="
ncu --details-all --set full -o res11 ./CSGresnet-11
ncu --details-all --set full --csv ./CSGresnet-11 2>&1 | tee res11.csv
sleep 10
printf "\n==== Start Execution 12 ====="
ncu --details-all --set full -o res12 ./CSGresnet-12
ncu --details-all --set full --csv ./CSGresnet-12 2>&1 | tee res12.csv

printf "\n Resnet DONE ----\n"

