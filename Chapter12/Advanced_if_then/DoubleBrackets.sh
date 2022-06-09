#!/bin/bash
# Using double brackets for pattern matching
#
#
if [[ $BASH_VERSION == 5.* ]]
then
    echo "You are using the Bash SHell version 5 series."
else
    echo "You are using $BASH_VERSION version"
fi