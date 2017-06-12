#!/usr/bin/sh

if [ -z "$1" ]
then
   echo "Need to specify a branch name"
   exit
fi

# Sanity check
. sanityCheck.sh $1

echo "Will delete branch $1 both locally and remotely"

# Switch to master
git checkout master

# Delete branch locally
git branch -D $1

# Delete branch remotely
git push origin --delete $1
