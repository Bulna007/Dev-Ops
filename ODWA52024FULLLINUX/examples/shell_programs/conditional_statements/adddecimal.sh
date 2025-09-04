#!/bin/bash
read -p "A :" A
read -p "B :" B
#SUM=$(echo "$A+$B" | bc)
DIV=$(echo "scale=2; $B/$A" | bc)
echo "DIV: $DIV"