#!/bin/bash
SIDE1=$1
BASE=$2
SIDE2=$3
PERIMETER=$[SIDE1 + BASE + SIDE2]

N=$#
PROG_FILE_NM=$0
ALL_ARGS=$*

echo "no of args : $N"
echo "shell program filename: $PROG_FILE_NM"
echo "all args: $ALL_ARGS"
echo "perimeter : $PERIMETER"