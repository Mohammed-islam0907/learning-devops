#!/bin/bash

file_name() {
    local file=$1

if [ -f "$file" ]; then
    count_line=$(wc -l < "$file")
    echo "Number of lines: $count_line"
else
    echo "$file doesn't exist" 
fi    
}

file_name "BASH Scripting/Projects/level_6/level6-script-test"