#!/bin/bash
# Check if the file is empty
#
file_name=$HOME/sentinel
echo
echo "Checking if $file_name file is empty..."
echo
#
# Check if file exist and is a file.
#
if [ -f $file_name ]
then
    # Files does exist. Check if its empty
    if [ -s $file_name ]
    then
        echo "The $file_name file exist and has data in it."
        echo "Will not remover this file"
    #
    else
        echo "The $file_name file exist but is empty."
        echo "Deleting empty file..."
        rm $file_name
    fi
# 
else
    echo "The $file_name file does not exist."
fi