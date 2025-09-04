#!/bin/bash
read -p "week of the day:" WEEK_DAY
case $WEEK_DAY in
"Mon")
echo "DMS"
echo "Database"
echo "Operating systems"
echo "Networking"
;;
"Tue")
echo "Networking"
echo "IOT"
echo "Linux"
echo "Database"
;;
"Wed")
echo "DMS"
echo "Operating systems"
echo "Linux"
echo "Data Structures"
;;
"Thu")
echo "Data Structures"
echo "AI"
echo "AWS Cloud"
echo "Devops"
;;
"Fri")
echo "Big data Analytics"
echo "Data science"
echo "Java"
echo "Python"
;;
*)
echo "Holiday"
esac
