#!/usr/bin/sh

for repo in tr.source j9vm omr
do

   cd $repo
   syncRepos.sh
   cd ..

done
