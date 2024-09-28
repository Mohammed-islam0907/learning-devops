#!/bin/bash

DIRECTORY="../level_10"
LIMIT=1


CURRENT_USAGE=$(du -sm "$DIRECTORY" | awk '{print $1}')


if [ "$CURRENT_USAGE" -gt "$LIMIT" ]; then
    echo "Disk space has been exceeded"
else    
    echo "Disk space is fine"
fi