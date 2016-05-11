#!/usr/bin/sh

if [ -z "$1" ]
then
   echo "Need to specify a branch name"
   exit
fi

echo "Will delete branch $1 both locally and remotely"

# Switch to the clean branch
git checkout clean

# Delete branch locally
git branch -D $1

# Delete branch remotely
git push origin --delete $1

# Prune 
git prune
