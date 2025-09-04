#!/bin/bash
read -p "N : " N
I=1
echo "$N Table :"
while [ $I -le 10 ]
do
    MUL=$[I*N]
    printf "%2d * %d = %2d\n" $I $N $MUL
    I=$[I+1]
done