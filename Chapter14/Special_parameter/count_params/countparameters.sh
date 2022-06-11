#!/bin/bash
# Counting command-line parameters
# if parameter input is equal to 1 then

if [ $# -eq 1 ]
then
    fragment="Parameters was"
else
    fragment="parameters were"
fi
echo $# $fragment supplied.
exit