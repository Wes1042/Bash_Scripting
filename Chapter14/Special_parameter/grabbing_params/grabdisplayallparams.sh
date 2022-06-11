#!/bin/bash
# Exploring diffrent methods for grabbing all the parameters
#
echo
echo "Using the \$* method: $*"
count=1
for param in "$*"
do
    echo "\$* Parameter #$count = $param"
    count=$[ $count + 1 ]
done
echo
echo "Using the \$* method with print everything in a string"
#
echo
echo "Using the \$@ method: $@"
count=1
for param in "$@"
do
    echo "\$@ Parameter #$count = $param"
    count=$[ $count + 1 ]
done
echo
echo "Using the \$@ method will iterate the input.Similar to how a array works or list."
echo
exit