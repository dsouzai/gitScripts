#!/usr/bin/sh

# Get the current branch
originalBranch=`getCurrentBranch.sh`

# Synch the clean branch
git checkout clean
git pull --rebase upstream green

# Synch the master branch
git checkout master
git pull --rebase upstream master

# Fetch refs from origin
git fetch origin

# Switch back to the original branch
git checkout $originalBranch
