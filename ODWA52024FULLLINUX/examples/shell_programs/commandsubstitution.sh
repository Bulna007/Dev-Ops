#!/bin/bash
read -p "Firstname : " FIRST_NM
read -p "Lastname : " LAST_NM

FIRSTNM_LEN=$(echo -n $FIRST_NM|wc -c)
LASTNM_LEN=$(echo -n $LAST_NM|wc -c)

LEN=$((FIRSTNM_LEN+LASTNM_LEN))
echo "length : $LEN"