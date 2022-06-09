#!/bin/bash
# Look before you leap
#
jump_directory=/home/Torfa
#
if [ -d $jump_directory ]
then
    echo "The $jump_directory directory exist."
    cd $jump_direcotry
    ls
else
    echo "The $jump_directory does NOT exist."
fi