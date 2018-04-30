#/bin/bash

export LANG=C
export PATH=/sbin:/bin:/usr/sbin:/usr/bin

[[ -z "$1" ]]  && { echo >&2 "error: need arg";        exit 1; }
[[ "$1" = v ]] && { echo >&2 "error: 'v' not allowed"; exit 2; }

grep $2 "$1" * 2>&1 \
| grep -v ": Is a directory$" \
| grep --color $2 "$1"
