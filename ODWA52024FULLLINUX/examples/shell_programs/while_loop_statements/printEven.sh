#!/bin/bash
read -p "N :" N
I=2

while [ $I -le $N ]
do
    REM=$[I%2]
    if [ $REM -eq 0 ]; then
        printf "%d " $I
    fi
    I=$[I+1]
done
echo ""