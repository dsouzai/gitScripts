#!/usr/bin/sh

if [ -z "$1" ]
then
   echo "Need to specify a branch name"
   exit
fi

if [ -z "$2" ]
then
   commit="clean"
else
   commit=$2
fi

# Sanity check
. sanityCheck.sh $1

echo "Will create a new branch $1 from $commit"

# Create new branch
git checkout -b $1 $commit
