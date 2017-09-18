#!/usr/bin/sh

for repo in omr openj9
do

   cd $repo
   syncRepos.sh
   cd ..

done
