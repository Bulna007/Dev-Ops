#!/bin/bash
read -p "A :" A
read -p "B :" B

if [ $A -gt $B ]
then
    printf "%d is big\n" $A
fi

if [ $B -gt $A ]
then
    printf "%d is big\n" $B
fi

if [ $A -eq $B ]
then
    printf "A: %d and B: %d are equal\n" $A $B
fi