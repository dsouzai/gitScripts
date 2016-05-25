#!/usr/bin/sh

if [ -z "$1" ]
then
   echo "Need to specify a branch name"
   exit
fi

# Sanity check
. sanityCheck.sh

echo "Will rebase branch $1 onto clean"

# Switch to the clean branch
git checkout $1

# Rebase onto clean
git rebase clean
