#!/bin/bash

directory="../Arena"
log_file="change_log.txt"



if [ ! -d "$directory" ]; then
    echo "Directory doesn't exist"
    exit 1
fi

fswatch -r "$directory" | while read event; do
current_date=$(date +"%Y-%m-%d %H:%M:%S")
    if [[ "$event" == *"$log_file"* ]]; then 
    continue
    fi

    if [ -e "$event" ]; then
        echo "$current_date File modified/created: $event" >> "$log_file"
    else
        echo "current_date File deleted: $event " >> "$log_file"
    fi

done

