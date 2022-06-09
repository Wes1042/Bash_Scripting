#!/bin/bash

#testing nested ifs - using elifand else
#
testuser=NoSuchUser
#
if grep $testuser /etc/passwd
then
	echo "The user $testuser exist on the system"
	echo
elif  ls -d /home/$testuser/
	then
		echo "This user $testuser has a direcotry"
		echo "even though $testuser doesn't have an account."
	else
		echo "The user $testuser does not exist on the system."
		echo "and no directory exist for the $testuser ."
fi
echo "We are outside the nested if statement"
