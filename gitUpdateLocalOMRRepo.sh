#!/usr/bin/sh

# Get the current branch
originalBranch=`getCurrentBranch.sh`

# Synch the master branch
git checkout master
git pull --rebase upstream master

# Switch back to the original branch
git checkout $originalBranch
