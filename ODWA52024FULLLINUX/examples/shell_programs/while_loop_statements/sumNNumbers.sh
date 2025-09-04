#!/bin/bash
read -p "N :" N
I=1
SUM=0
while [ $I -le $N ]
do
    SUM=$[SUM+I]
    I=$[I+1]
done

printf "Sum of %d Numbers is %d\n" $N $SUM