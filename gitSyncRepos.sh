#!/usr/bin/sh

for repo in omr proxy-openj9
do

   cd $repo
   syncRepos.sh
   cd ..

done
