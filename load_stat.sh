#!/bin/bash
# Script will chcek the load status in the next 10 Sec
echo -e "Script to find load status in next 2 10second intervals\n"
#echo -e "Enter the process name\n"
#read pro
one=`awk '{print $1}' /proc/loadavg | cut -d '.' -f1`
if [ $one -lt 10 ]; then
echo -e "Load is normal"
else 
echo -e "\n"
echo -e "$one"
echo -e "load is high\n"
echo -e "Checking after 10 seconds\n"

sleep 10
echo -e "After 10 seconds"
two=`awk {print $1} /proc/loadavg | cut -d '.' -f1 `
echo -e "\n"
echo -e "$two"
fi
