#!/bin/bash
# Compare two file's creation date/times
#
if [ $HOME/Donwloads/game.rpm -nt $HOME/software/games.rpm ]
then 
    echo "The $HOME/Downloads/game.rpm file is newer"
    echo "than the $HOME/software/games.rpm file"
#
else
    echo "The $HOME/Downloads/game.rpm file is older"
    echo "than the $HOME/software/games.rpm file"
#
fi
