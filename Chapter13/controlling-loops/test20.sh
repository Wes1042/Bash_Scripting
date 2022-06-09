#!/bin/bash
# breaking out of an outer loop
# n indicated the level of the loop to break out of. 
# by default n = 1 which will break the current loop
# you can set n = 2 which will break the outer loop.

for (( a = 1;a < 4;a++ ))
do
    echo "Outer loop: $a"
    for (( b =1; b < 100; b++ ))
    do
        if [ $b -gt 4 ]
        then
            break 2
        fi
        echo "  Inner loop: $b"
    done
done