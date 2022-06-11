#!/bin/bash
# Testing grabbing the last parameter .
# continuation from badlastparam.sh

echo The number od parameter is $#
echo The last parameter is ${!#}
exit