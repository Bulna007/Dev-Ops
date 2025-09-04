#!/bin/bash
read -p "units consumed:" UNITS
BILL_AMT=0

if [ $UNITS -gt 0 -a $UNITS -le 50 ]; then
    BILL_AMT=$(echo "$UNITS*5.25" | bc)
elif [ $UNITS -gt 50 -a $UNITS -le 150 ]; then
    BILL_AMT=$(echo "(50*5.25) + (($UNITS-50)*7.50)" | bc)
elif [ $UNITS -gt 150 -a $UNITS -le 350 ]; then
    BILL_AMT=$(echo "(50*5.25) + (100*7.50) + (($UNITS-150)*8.25)" | bc)    
elif [ $UNITS -gt 350 ]; then
    BILL_AMT=$(echo "(50*5.25) + (100*7.50) + (200*8.25) + (($UNITS-350)*9.50)" | bc)
else
    echo "error: invalid input"    
    exit 1
fi
printf "bill amount: %f\n" $BILL_AMT
