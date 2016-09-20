#!/usr/bin/sh

# Sync Local Repo
gitUpdateLocalRepo.sh

# Push J9 branches
git push origin master clean

# Push OMR branches
cd omr
git push origin master
cd ..
