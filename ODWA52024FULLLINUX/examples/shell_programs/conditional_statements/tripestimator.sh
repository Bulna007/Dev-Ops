#!/bin/bash
read -p "estimated kilometers:" EST_KMS
read -p "trip type (shared/private):" TRIP_TYPE
EST_TRIP_AMT=0

if [ $TRIP_TYPE = "shared" ]; then
    EST_TRIP_AMT=$(echo "$EST_KMS * 5.25" | bc)
elif [ $TRIP_TYPE = "private" ]; then
    read -p "cab type (hatchback/sedan/suv/premium):" CAB_TYPE
    #nested if-elif-else
    if [ $CAB_TYPE = "hatchback" ]; then
        EST_TRIP_AMT=$(echo "$EST_KMS * 6.15" | bc)
    elif [ $CAB_TYPE = "sedan" ]; then
        EST_TRIP_AMT=$(echo "$EST_KMS * 7.80" | bc)
    elif [ $CAB_TYPE = "suv" ]; then
        EST_TRIP_AMT=$(echo "$EST_KMS * 9.50" | bc)
    elif [ $CAB_TYPE = "premium" ]; then
        EST_TRIP_AMT=$(echo "$EST_KMS * 12.25" | bc)
    else
        echo "error: invalid cab type"
        exit 1
    fi
else
    echo "error: invalid trip type"
    exit 1
fi
echo "estimated trip amount: $EST_TRIP_AMT"