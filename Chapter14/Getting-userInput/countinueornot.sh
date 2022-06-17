#!/bin/bash
# using the read command for the one character
#
read -n 1 -p "Do you want want to conitnue [Y/N]? " answer
#
case $answer in 
Y | y)  echo
        echo "Okay. Continue on..," ;;
N | n)  echo
        echo "Okay. Goodbye"
        exit ;;
    *)  echo
        echo "please enter a valid option" ;;
esac
echo "This is the end of the script."
exit