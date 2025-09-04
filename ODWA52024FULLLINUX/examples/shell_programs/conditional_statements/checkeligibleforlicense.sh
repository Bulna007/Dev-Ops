#!/bin/bash
AGE=$1
N_ARGS=$#

if [ $N_ARGS -ne 1 ]; then
    echo "error: age is required"
    exit 1
fi

if [ $AGE -ge 18 ]; then
    echo "eligible to apply for license"
else
    echo "oops! not eligible to apply for license"
fi