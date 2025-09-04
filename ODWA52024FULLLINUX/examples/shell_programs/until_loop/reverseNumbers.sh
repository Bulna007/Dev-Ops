#!/bin/bash
read -p "N :" N
I=$N
until [ $I = 0 ]
do
    echo "$I"
    I=$[I-1]
done