#!/bin/bash
N=0
SUM=0
until [ $N -eq -1 ] 
do
    SUM=$[SUM+N]
    read -p "N :" N
done
echo "Sum : $SUM"