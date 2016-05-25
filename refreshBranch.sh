#!/usr/bin/sh

if [ -z "$1" ]
then
   echo "Need to specify a branch name"
   exit
fi

# Sanity check
. sanityCheck.sh

echo "Will rebase branch $1 onto clean"

# Get the current branch
originalBranch=`getCurrentBranch.sh`

# Switch to the branch to be rebased
git checkout $1

# Rebase onto clean
git rebase clean

# Switch back to the original branch
git checkout $originalBranch
