#!/bin/bash

DIRECTORY=greeting
FILE=greetings.txt

mkdir -p $DIRECTORY

cd $DIRECTORY

touch greetings.txt

echo "You are amazing" > $FILE


cat "$FILE"