#!/bin/bash

directory="Arena_boss" 


mkdir -p $directory #-p makes our directory if it is not already made




for i in {1..5}; do #i will iterate each time until the sequence is finished

    FILE="$directory/file$i.txt" #creates our files
    RANDOM_LINE=$((RANDOM % 11 + 10))   

    for j in $(seq 1 $RANDOM_LINE); do
        echo "This is line $j" >> $FILE

    done
done

find "$directory" -type f -exec ls -l {} \; | awk '{print $5, $9}' | sort -n

NEW_DIRECTORY="Victory_Archive"
mkdir -p "$NEW_DIRECTORY"


for FILE in $directory/*; do

    if  grep -iq "Victory" "$FILE"; then
        mv "$FILE" "$NEW_DIRECTORY"
    fi
done