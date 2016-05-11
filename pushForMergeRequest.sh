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

echo "Will create a new branch ${1}_final from $1 and rebase HEAD~$2"

# Sync and update the repos
echo syncRepos.sh

# Switch to the branch
echo git checkout $1

# Checkout new branch for rebasing
echo git checkout -b ${1}_final

# Rebase onto master
echo git rebase master

# Rebase interactively to squash commits into one
echo git rebase -i HEAD~$2
echo git push origin ${1}_final
