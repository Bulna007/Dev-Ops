#!/bin/bash
read -p "N :" N
I=2
MID=$[N/2] #N=47, MID=23
REM=0
IS_PRIME=1

while [ $I -le $MID ]
do
    REM=$[N%I]
    if [ $REM -eq 0 ]; then
        IS_PRIME=0
        break
    fi
    I=$[I+1]
done

if [ $IS_PRIME -eq 1 ]; then
    echo "$N is prime number"
else
    echo "$N is not a prime number"
fi
