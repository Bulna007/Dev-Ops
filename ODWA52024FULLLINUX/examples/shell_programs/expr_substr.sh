#!/bin/bash
IFSC_CODE=SBIN0021837

BANK_NM=`expr substr $IFSC_CODE 1 4`
ZONAL_CODE=`expr substr $IFSC_CODE 5 3`
BRANCH_CODE=`expr substr $IFSC_CODE 8 4`

printf "Bank Name: %s Zonal Code: %s and Branch Code: %s\n" $BANK_NM $ZONAL_CODE $BRANCH_CODE
