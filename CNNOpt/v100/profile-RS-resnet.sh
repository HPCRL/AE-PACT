
#!/bin/bash

printf "[2] Resnet cudnn ref\n"
printf "\n==== Start Execution 1 ====="
ncu --details-all --set full --csv ./CSGresnet-1 2>&1 | tee res1.csv
sleep 10
printf "\n==== Start Execution 2 ====="
ncu --details-all --set full --csv ./CSGresnet-2 2>&1 | tee res2.csv
sleep 10
printf "\n==== Start Execution 4 ====="
ncu --details-all --set full --csv ./CSGresnet-4 2>&1 | tee res4.csv
sleep 10
printf "\n==== Start Execution 6 ====="
ncu --details-all --set full --csv ./CSGresnet-6 2>&1 | tee res6.csv
sleep 10
printf "\n==== Start Execution 7 ====="
ncu --details-all --set full --csv ./CSGresnet-7 2>&1 | tee res7.csv
sleep 10
printf "\n==== Start Execution 9 ====="
ncu --details-all --set full --csv ./CSGresnet-9 2>&1 | tee res9.csv
sleep 10
printf "\n==== Start Execution 10 ====="
ncu --details-all --set full --csv ./CSGresnet-10 2>&1 | tee res10.csv
sleep 10
printf "\n==== Start Execution 12 ====="
ncu --details-all --set full --csv ./CSGresnet-12 2>&1 | tee res12.csv

printf "\n Resnet DONE ----\n"
