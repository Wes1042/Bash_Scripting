#!/bin/bash

#testing multiple commands in the then block
#
testuser=silent
#
if grep $testuser /etc/passwd
then
	echo "This is my first command in the block."
	echo "This is my second command in the block."
	echo "I can even put in other commands besides echo:"
	ls /home/$testuser/Documents/Bash_Scripting/Chapter12/*.sh
fi
echo "We are outside the if statement"
