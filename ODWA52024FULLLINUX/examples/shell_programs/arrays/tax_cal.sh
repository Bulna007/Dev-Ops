#!/bin/bash
GROSS_INCOMES=(300000 500000 700000)
for GROSS_INCOME in ${GROSS_INCOMES[@]}
do
    TAX_AMT=$(echo "scale=2; ($GROSS_INCOME*12)/100" | bc)
    NET_INCOME=$(echo "scale=2; $GROSS_INCOME-$TAX_AMT" | bc)
    echo "Gross: $GROSS_INCOME, Tax: $TAX_AMT and Net: $NET_INCOME"
done