#!/usr/bin/sh

if [ -z "$1" ]
then
   echo "Need to specify a branch name"
   exit
fi

if [ -z "$2" ]
then
   echo "Need to specify number of commits to rebase"
   exit
fi

if [ -z "$3" ]
then
   PUSH_BRANCH=0
else
   PUSH_BRANCH=1
fi

echo "Will create a new branch ${1}_backup from $1 and rebase HEAD~$2"

# Sync and update the repos
echo gitSyncRepos.sh

# Delete backup if it exists
echo deleteBranch.sh ${1}_backup

# Switch to the branch
echo git checkout $1

# Checkout new branch for rebasing
echo git checkout -b ${1}_backup

# Switch back to the branch
echo git checkout $1

# Rebase onto master
echo git rebase master

# Rebase interactively to squash commits into one
echo git rebase -i HEAD~$2

# Push the branch
if [ $PUSH_BRANCH == "1" ]
then
   echo git push origin ${1}
else
   # worth echoing the above command
   echo --
fi
