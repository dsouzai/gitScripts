#!/usr/bin/sh

# Get the current branch
originalBranch=`getCurrentBranch.sh`

if [ -z "$1" ]
then
   echo "Need to specify a branch"
   exit
else
   branch=$1
fi

if [ -z "$2" ]
then
   pushToOrigin=1
else
   pushToOrigin=$2
fi

# Synch the master branch
git checkout $branch
git pull --rebase upstream $branch

# Push branches to origin
if [ "$2" -eq "1" ]
then
   git push origin $branch
else
   echo "### Not pushing to origin"
fi

# Switch back to the original branch
git checkout $originalBranch
