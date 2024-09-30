#!/bin/bash

echo "What would you like to do today?"

echo "1. Add two numbers together"
echo "2. Subtract two numbers"
echo "3. Multiply two numbers"
echo "4. Divide two numbers"

read -p "enter your choice (1-4): " number 

case $number in

    1) echo "Choose two numbers seperated by a space"
        read number1 number2
        echo "$number1 plus $number2 is: $((number1 + number2 ))";;
    
    
    2) echo "Choose two numbers seperated by a space"
        read number1 number2
        echo "$number1 minus $number2 is: $((number1 - number2))";;

    3) echo "Choose two numbers seperated by a space"
        read number1 number2
        echo "$number1 multiplied by $number2 is: $(($number1 * $number2))";;


    4) echo "Choose two numbers seperated by a space"
    read number1 number2
    echo "$number1 divided by $number2 is: $((number1 / number2))";;

    *) echo "Invalid option selected - run this script again"


esac