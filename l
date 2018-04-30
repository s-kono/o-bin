#!/bin/bash

export LANG=C
export PATH=/sbin:/bin:/usr/sbin:/usr/bin

if [[ -z "$1" ]]; then
    ls -l --color=tty
else
    echo $1 | grep -q "^/"
    if [[ $? -eq 0 ]]; then
        ls -l --color=tty $1*
    else
        ls -l --color=tty *$1*
    fi
fi

exit
