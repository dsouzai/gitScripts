#!/usr/bin/sh

if [ -z "$1" ]
then
   FIRST="master"
   SECOND=""
else
   FIRST=$1
   SECOND=$2
fi

# Compare Branches
git linf --no-merges $FIRST..$SECOND
