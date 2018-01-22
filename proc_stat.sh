#!/bin/bash
echo -e "Script to find a process stat in concurrent intervals\n"
echo -e "Enter the process name\n"
read pro
one=`ps -A -o "ppid pid user pcpu pmem rss cputime etime nice comm cmd" --sort pid | grep -i $pro | grep -v "grep" `
if [ -z "$pro" ]; then
echo -e "Process not exists"
else 
echo -e "\n"
echo -e "$one"


sleep 10
echo -e "After 10 seconds"
two=`ps -A -o "ppid pid user pcpu pmem rss cputime etime nice comm cmd" --sort pid | grep -i $pro | grep -v "grep" `
echo -e "\n"
echo -e "$two"
fi
