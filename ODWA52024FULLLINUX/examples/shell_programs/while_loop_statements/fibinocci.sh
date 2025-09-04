#!/bin/bash
read -p "N : " N
PN=0
CN=1
NN=1
printf "%d " $CN
while [ $NN -le $N ]
do
    printf "%d " $NN
    PN=$CN
    CN=$NN
    NN=$[PN+CN]
done
echo ""