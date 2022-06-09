#!/bin/bash
# Using string test evaluations
#
testuser=silent
#
if [ $testuser != silent ]
then
    echo "The testuser variable does NOT contains: silent"
else
    echo "The testuser variable contains: silent"
fi
