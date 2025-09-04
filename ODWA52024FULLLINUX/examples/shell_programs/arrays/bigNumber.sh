#!/bin/bash
read -p "Numbers :" -a NUMBERS
BIG_NUMBER=0

for NUM in ${NUMBERS[@]}
do
    if [ $BIG_NUMBER -lt $NUM ]; then
        BIG_NUMBER=$NUM
    fi
done
echo "Big Number : $BIG_NUMBER"