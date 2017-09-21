#!/usr/bin/sh

pushd . > /dev/null
cd /home/dsouzai/dev/gitSync

for repo in omr openj9 pi kca
do

   cd $repo
   echo "================================="
   echo "Start syncing $repo"
   echo "================================="
   syncRepos.sh
   echo "================================="
   echo "Finish syncing $repo"
   echo "================================="

   cd ..

done

popd > /dev/null
