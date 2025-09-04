#!/bin/bash
NARGS=$#

if [ $NARGS -lt 2 ]; then
    echo "error: minimum 2 numbers are required!"
    exit 1
fi
SUM=0
for N in $@
do
    SUM=$[SUM+N]
done
echo "Sum : $SUM" 