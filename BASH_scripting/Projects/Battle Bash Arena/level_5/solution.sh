#!/bin/bash

mkdir Battlefield

cd Battlefield

touch ../Battlefield/knight.txt ../Battlefield/sorcerer.txt ../Battlefield/rogue.txt

if [ -f "knight.txt" ]
then 
    echo "knight.txt exists"
    mkdir Archive
    mv knight.txt Archive/
    ls -l Archive 
    ls -l ../Battlefield
fi
