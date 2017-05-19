#!/usr/bin/sh

# Sync TR Repos
cd tr.source
syncTRRepos.sh
cd ..

# Sync J9 Repo
cd j9vm
syncJ9Repos.sh
cd ..

# Update OMR Repo
cd omr
syncOMRRepos.sh
cd ..

