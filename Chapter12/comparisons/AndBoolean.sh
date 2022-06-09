#!/bin/bash
#
# Testing and AND Boolean compound condition
#
#LOGIC: checks if the direcotry exist and if its writable
if [ -d $HOME ] && [ -w $HOME/newfile ]
then
    echo "The file exist and you can write to it."
#
else
    echo "You cannot write to the file"
#
fi