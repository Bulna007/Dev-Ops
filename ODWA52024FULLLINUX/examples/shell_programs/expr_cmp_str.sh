#!/bin/bash
STR1=$1
STR2=$2

MATCH_CNT=`expr "$STR1" : "$STR2"`
echo "matching count : $MATCH_CNT"