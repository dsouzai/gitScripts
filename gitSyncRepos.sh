#!/usr/bin/sh

# Sync Local Repo
gitUpdateLocalRepo.sh

# Push branches
git push origin master clean
