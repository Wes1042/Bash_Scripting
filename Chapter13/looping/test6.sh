#!/bin/bash
# iterate through all the files in a directory

for file in /home/silent/*
do
    if [ -d "$file" ]
    then
        echo "$file is a direcotry"
    elif [ -f "$file" ]
    then
        echo "$file is a file"
    fi
done