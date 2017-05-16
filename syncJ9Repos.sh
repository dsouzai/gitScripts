#!/usr/bin/sh

# Get the current branch
originalBranch=`getCurrentBranch.sh`

# Synch the clean branch
git checkout clean
git pull --rebase upstream integration

# Synch the master branch
git checkout master
git pull --rebase upstream master

# Push branches to origin
git push origin master clean

# Switch back to the original branch
git checkout $originalBranch
