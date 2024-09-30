#!/bin/bash

FILE=exist.txt

read -p "Enter the file you want to check exists  " FILE

if [ -e "$FILE" ]; then
    echo "$FILE exists"
else 
    echo "exist.txt does not exist"
fi

if [ -r $FILE ]; then
    echo "The $FILE file is readable" 
else
    echo "The $FILE file is not readable"
fi

if  [ -w $FILE ]; then
    echo "The $FILE is writable"
else 
    echo "The $FILE is not readable"
fi

if [ -x $FILE ]; then
    echo "The $FILE file is executable"
else 
    echo "The $FILE file is not executable"
fi