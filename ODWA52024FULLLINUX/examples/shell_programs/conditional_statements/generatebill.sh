#!/bin/bash
echo "1. Idly (INR:40)"
echo "2. Dosa (INR:80)"
echo "3. Vada (INR:50)"
echo "4. Poori (INR:90)"
read -p "Choose one item from the above Menu:" MENU_ITEM
read -p "Quantity:" QTY

UNIT_PRICE=0

if [ $MENU_ITEM -eq 1 ]; then
    UNIT_PRICE=40
elif [ $MENU_ITEM -eq 2 ]; then
    UNIT_PRICE=80
elif [ $MENU_ITEM -eq 3 ]; then
    UNIT_PRICE=50
elif [ $MENU_ITEM -eq 4 ]; then
    UNIT_PRICE=90
else
    echo "error: invalid menu option choosen"
    exit 1
fi
BILL_AMT=$[UNIT_PRICE * QTY]
echo "Bill Amount: $BILL_AMT"