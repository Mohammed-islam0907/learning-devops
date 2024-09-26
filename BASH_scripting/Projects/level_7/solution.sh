#!/bin/bash

directory="../../Arena"

find "$directory" -type f -name "*.txt" -exec ls -l {} + | awk '{ print $5, $9 }' | sort -n



