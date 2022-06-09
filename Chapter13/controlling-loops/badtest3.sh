#!/bin/bash
# improperly using the continue command in a while loop
# bad case of test21.sh
# when continue is true , it will skip the following commands and start from the top of the while loop.
var1=0

while echo "while iteration: $var1"
    [ $var1 -lt 15 ]
do
    if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
    then
        continue
    fi
    echo "  Inside iteration number: $var1"
    var1=$[ $var1 + 1 ]
done