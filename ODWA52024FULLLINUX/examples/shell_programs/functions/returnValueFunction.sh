#!/bin/bash

function add() {
    NARGS=$#
    if [ $NARGS -ne 2 ]; then
        return 100
    fi
    local A=$1
    local B=$2
    SUM=$[A+B]
    return 0
}

#main block
add 10 29
ADD_STATUS=$?
if [ $ADD_STATUS -eq 100 ]; then
    echo "error: 2 inputs are required"
    exit 1
elif [ $ADD_STATUS -eq 0 ]; then
    echo "sum : $SUM"
fi
