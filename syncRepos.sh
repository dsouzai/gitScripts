#!/usr/bin/sh

# Fetch upstream
git fetch upstream

# Synch the clean branch
git checkout clean
git rebase upstream/green
git push origin clean

# Synch the master branch
git checkout master
git rebase upstream/master
git push origin master
