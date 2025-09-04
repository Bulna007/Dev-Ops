#!/bin/bash

function printTable() {
    I=1
    local N=10
    local MUL=0
    while [ $I -le $N ]
    do
        MUL=$[I*TABLE]
        echo "$I * $TABLE = $MUL"
        I=$[I+1]
    done
}

NARGS=$#
if [ $NARGS -ne 1 ]; then
    echo "error: table is required"
    exit 1
fi

TABLE=$1
printTable

echo "I : $I"
echo "N : $N"
