#!/bin/bash
N=$1
N_ARGS=$#

if [ $N_ARGS -ne 1 ]; then
  echo "error: one number is required as input"
  exit 1
fi

if [ $N -gt 0 ]; then
  echo "positive number"
fi

if [ $N -lt 0 ]; then
    echo "negative number"
fi

if [ $N -eq 0 ]; then
    echo "neither positive nor negative"
fi