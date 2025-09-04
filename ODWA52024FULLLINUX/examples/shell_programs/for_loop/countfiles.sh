#!/bin/bash

NARGS=$#
if [ $NARGS -ne 1 ]; then
    echo "error: only one directory path is required!"
    exit 1
fi
DIR_LOC=$1
COUNT=0

for F in $DIR_LOC/*
do
    if [ -f $F ] ; then
        COUNT=$[COUNT+1]
    fi
done
printf "under dir: %s, total files are: %d\n" $DIR_LOC $COUNT