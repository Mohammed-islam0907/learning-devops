#!/bin/bash

echo "What would to like to do?"

echo "1. Check disk space"
echo "2. Show system uptime"
echo "3. List users"

echo "Enter a number"

read number 

case $number in

    1) df -h;;
    2) uptime;;
    3) cut -d: -f1 /etc/passwd;;
    *) echo "Didn't select a valid option"
esac