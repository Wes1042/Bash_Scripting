#!/bin/bash
# Check systems on Local network allowing 
# for a variety of input methods
#
#
############## Determine Input Methods ########################
#
# Check for command-line options here using getopts.
# If non, then go on the File Input Method
#
while getopts t: opt
do
    case "$opt" in
        t) #Found the -t option
            if [ $OPTARG = "IPv4" ]
            then
                pingcommand=$(which ping)
            #
            elif [ $OPTARG = "IPv6" ]
            then
                pingcommand=$(which ping6)
            #
            else
                echo "Usage: -t IPv4 or -t IPv6"
                echo "Exiting script..."
                exit
            fi
            ;;
        *) # Any other option
            echo "Usage: -t IPv4 or -t IPv6"
            echo "Exiting script..."
            exit ;;
    esac
    #
    shift $[ $OPTIND - 1 ]
    #
    # if number of parameter inputed = 0 do:
    if [ $# -eq 0 ]
    then
        echo
        echo "IP Address(es) parameter are missing."
        echo "Exiting script..."
        exit

    fi
    #
    for ipaddress in "$@"
    do
        echo
        echo "Checking system at $ipaddress..."
        echo
        $pingcommand -q -c 3 $ipaddress
        echo
    done
    exit
done
#
############### File Input Method ############################
#
echo
echo "Please enter the file name with an absolute directory refrence..."
echo
choice=0
while [ $choice -eq 0 ]
do
    read -t 60 -p "Enter name of file: " filename
    if [ -z $filename ]
    then
        quitanswer=""
        read -t 10 -n 1 -p "Quit script [Y/n]?" quitanswer
        #
        case $quitanswer in
        Y | y)  echo
                echo "Quiting script..."
                exit ;;
        N |n)   echo
                echo "Please answer question: "
                choice=0;;
        *)      echo
                echo "No response. Quiting script..."
                exit ;;
        esac
    else
        choice=1
    fi
done
#
if [ -s $filename ] && [ -r $filename ]
then
    echo "$filename is a file, is readable, and is not empty"
    echo
    cat $filename | while read line
    do
        ipaddress=$line
        read line
        iptype=$line
        if [ $iptype = "IPv4" ]
        then
            pingcommand=$(which ping)
        else
            pingcommand=$(which ping6)
        fi
        echo "checking system at $ipaddress..."
        $pingcommand -q -c 3 $ipaddress
        echo
    done
    echo "Finished processing the file. All systems checked."
else
    echo
    echo "$filename is either not a file, is empty or is"
    echo "not readable by you."
    echo
    echo "Exiting script..."
fi
#
################# Exit Script ############################
#
exit
