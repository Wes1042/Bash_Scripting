#!/bin/bash
# extracting data and outputting to a file

for file in /home/silent/*
do
    if [ -d "$file" ]
    then
        echo "$file is a directory"
    elif [ -f "$file" ]
    then
        echo "$file is a file"
    fi
done > output.txt