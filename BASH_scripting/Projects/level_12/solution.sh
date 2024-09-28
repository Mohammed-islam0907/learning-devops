#!/bin/bash

CONFIG_FILE="config.txt"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "Configuration file doesn't exist"
    exit 1

fi 

while IFS='=' read -r key value; do 
    echo "Key: $key Value: $value"
done < "$CONFIG_FILE"

