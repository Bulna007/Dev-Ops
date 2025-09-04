#!/bin/bash
while [ true ]
do
    FREE_MEM=$(free -h | grep "Mem:" | awk '{print $4}')
    echo "Free memory: $FREE_MEM" >> /tmp/mem.log
    sleep 30s
done