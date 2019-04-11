#!/usr/bin/sh

pushd . > /dev/null
cd /home/dsouzai/dev/gitSync

for repo in omr openj9 kca
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


# PI
repo="pi"
cd $repo
echo "================================="
echo "Start syncing $repo"
echo "================================="
syncRepos.sh standalone
echo "================================="
echo "Finish syncing $repo"
echo "================================="
cd ..


popd > /dev/null
