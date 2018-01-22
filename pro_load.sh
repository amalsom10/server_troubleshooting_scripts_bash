#!/bin/bash
# Script will chcek the load status in the next 10 Sec
echo -e "Script to find load status and processes in particular intervals\n"
echo -e "checking load status in intervals\n"
temp=`awk '{print $1}' /proc/loadavg | cut -d '.' -f1`
limit=10
while [ $temp -gt $limit ] 
do
echo -e "High load on the server\n"
echo -e "Finding the user consumes more\n"
use=`ps aufx | awk '{print $1}' | sort -n | uniq -c | sort -nr -k1 | head -5 `
echo -e "$use"
done
echo -e "Load is less than $limit system is stable\n"

