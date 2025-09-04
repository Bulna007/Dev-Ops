#!/bin/bash
read -p "N :" N
REM=$[N%2]

if [ $REM -eq 0 ]
then
    echo "$N is even number"
else
    echo "$N is odd number"
fi