#!/bin/bash
read -p "Numbers :" -a NUMBERS
declare -a REV_NUMBERS
LEN=${#NUMBERS[@]}
I=$[LEN-1]

for NUM in ${NUMBERS[@]}
do
    REV_NUMBERS[I]=$NUM
    I=$[I-1]
done
echo "Array: ${NUMBERS[@]} Reverse Array : ${REV_NUMBERS[@]}"