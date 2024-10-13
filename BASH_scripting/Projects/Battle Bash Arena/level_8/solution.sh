#!/bin/bash

directory="../Arena"
search_word=$1

if [ $# -eq 0 ]; then
    echo "No word provided"
    exit 1
fi

find "$directory" -type f -name "*.log" -exec grep -H "$search_word" {} +