#!/usr/bin/sh

# Get the current branch
originalBranch=`getCurrentBranch.sh`

# Fetch the refs from upstream
git fetch upstream

# Synch the master branch
git checkout master
git pull --rebase upstream master

# Switch back to the original branch
git checkout $originalBranch
