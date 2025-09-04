#!/bin/bash
NARGS=$#
if [ $NARGS -ne 1 ]; then
    echo "error: one directory is required"
    exit 1
fi
COUNT=0
for F in $1/*
do
#echo -z $F
    if [ -f $F -a ! -s $F ]; then
        rm $F
        COUNT=$[COUNT+1]
    fi
done
echo "total files cleaned up: $COUNT"