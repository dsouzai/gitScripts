#!/usr/bin/sh

# Synch the clean branch
git checkout clean
git pull --rebase upstream green

# Synch the master branch
git checkout master
git pull --rebase upstream master

# Push branches
git push origin master clean

# Prune because of gc message
#git prune
