#!/bin/sh

# list or edit a TODO file

TODO_FILE=$HOME/Dropbox/.todo

if [ $# -eq 0 ]; then
    [ -r $TODO_FILE ] && cat $TODO_FILE
elif [ $1 = "e" -o $1 = "-e" ]; then
    [ -r $TODO_FILE -a -w $TODO_FILE ] && cat -n $TODO_FILE && ed -s $TODO_FILE
fi
