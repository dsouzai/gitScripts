#!/usr/bin/sh

# Get the current branch
originalBranch=`getCurrentBranch.sh`

if [ -z "$1" ]
then
   branch="master"
else
   branch=$1
fi

# Synch the master branch
git checkout $branch
git pull --rebase upstream $branch

# Push branches to origin
git push origin $branch

# Switch back to the original branch
git checkout $originalBranch
