#!/usr/bin/bash

pushd . > /dev/null
cd ~/dev/gitSync

repos="omr:master:1 openj9:master:1 openj9-openjdk-jdk11:openj9:0 kca:master:1 pi:standalone:1"

regex="((\w|\d|-)+):((\w|\d|-)+):((\w|\d|-))"

for keyval in $repos
do
  if [[ $keyval =~ $regex ]]
  then 
    repo="${BASH_REMATCH[1]}"
    upstream="${BASH_REMATCH[3]}"
    pushToOrigin="${BASH_REMATCH[5]}"

    cd $repo
    echo "================================="
    echo "Start syncing $repo"
    echo "================================="
    syncRepos.sh $upstream $pushToOrigin
    echo "================================="
    echo "Finish syncing $repo"
    echo "================================="
    cd ..
  else
    echo "Skipping $keyval"
  fi
done

popd > /dev/null
