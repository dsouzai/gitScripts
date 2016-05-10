#!/usr/bin/sh

if [ -z "$1" ]
then
   echo "Need to specify a branch name"
   exit
fi

echo "Will create a new branch $1 from clean"

# Switch to the clean branch
git checkout clean

# Branch off of clean branch
git checkout -b $1
