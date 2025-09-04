#!/bin/bash
read -p "Numbers : " -a NUMBERS
SUM=0

for NUM in ${NUMBERS[@]}
do
    REM=$[NUM%2]
    if [ $REM -eq 0 ]; then
        SUM=$[SUM+NUM]
    fi
done
echo "sum of even numbers : $SUM"