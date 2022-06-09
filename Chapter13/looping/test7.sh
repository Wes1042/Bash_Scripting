#!/bin/bash
# iterate through multiple directories

for file in /home/silent/.b* /home/silent/badtest
do
    if [ -d "$file" ]
    then
        echo "$file is a directory"
    elif [ -f "$file" ]
    then
        echo "$file is a file"
    else
        echo "$file doesn't exist"
    fi
done