#!/bin/bash

function add() {
    NARGS=$#
    if [ $NARGS -ne 2 ]; then
        echo "error: #2 arguments are required"
        exit 1
    fi
    A=$1
    B=$2
    SUM=$[A+B]
    echo "Sum : $SUM"
}

add 10 20
add 49 38
