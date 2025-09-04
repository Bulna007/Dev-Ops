#!/bin/bash
I=1 #counter variable initialization

while [ $I -le 5 ] #condition
do
    echo "good morning"
    echo "shellscripting is powerful scripting language"
    I=$[I+1] #increment
done

echo "good bye!"
