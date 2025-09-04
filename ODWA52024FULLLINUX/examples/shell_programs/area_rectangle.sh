#!/bin/bash
read -p "Length: " LEN
read -p "Breath: " BRE
AREA=$[LEN*BRE]
echo "Area of rectangle : $AREA"