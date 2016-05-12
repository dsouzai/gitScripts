#!/usr/bin/sh

# Get the current branch
originalBranch=`git name-rev --name-only HEAD`

# Synch the clean branch
git checkout clean
git pull --rebase upstream green

# Synch the master branch
git checkout master
git pull --rebase upstream master

# Push branches
git push origin master clean

# Switch back to the original branch
git checkout $originalBranch
