#!/usr/bin/sh

# Update J9 Repo
gitUpdateLocalJ9Repo.sh

# Update OMR Repo
cd omr
gitUpdateLocalOMRRepo.sh
cd ..

# Hack to ignore omr
git update-index --assume-unchanged omr
