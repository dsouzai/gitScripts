#!/usr/bin/sh

if [ -z "$1" ]
then
   echo "Need to specify a branch name"
   exit
fi

if [ -z "$2" ]
then
   PUSH_BRANCH=0
else
   PUSH_BRANCH=1
fi

# Sanity check
. sanityCheck.sh

# Sync and update the repos
gitSyncRepos.sh

# Delete backup if it exists
deleteBranch.sh ${1}_backup

# Switch to the branch
git checkout $1

# Create backup branch
git branch ${1}_backup

# Rebase onto master
git rebase master

# Push the branch
if [ $PUSH_BRANCH == "1" ]
then
   git push origin ${1}
else
   echo 
   echo issue the following when ready:
   echo git push --force origin ${1}
   echo
fi
