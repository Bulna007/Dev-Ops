#!/bin/bash
read -p "Numbers :" -a NUMBERS

#NUMBERS=(10 20 30 40 50)

#NUMBERS[0]=10
#NUMBERS[1]=20
#NUMBERS[2]=30

#declare -a NUMBERS
#NUMBERS[0]=10
#NUMBERS[1]=20
#NUMBERS[2]=30

#for N in ${NUMBERS[@]}
#do
#    echo $N
#done

#I=0
#LEN=${#NUMBERS[@]}
#while [ $I -lt $LEN ]
#do
#    echo ${NUMBERS[I]}
#    I=$[I+1]

#done

LEN=${#NUMBERS[@]}
for((I=0;I<LEN;I++))
do
    echo ${NUMBERS[I]}
done