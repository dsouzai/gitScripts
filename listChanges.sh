#!/usr/bin/sh

if [ -z "$1" ]
then
   FIRST="HEAD"
   SECOND=""
else
   FIRST=$1
   SECOND=$2
fi

# List changes
git diff --name-status $FIRST $SECOND
