#!/usr/bin/sh

pushd . > /dev/null
cd /home/dsouzai/dev/gitSync

repos="omr:master openj9:master openj9-openjdk-jdk11:openj9 openj9-openjdk-jdk17:openj9 kca:master pi:standalone"

regex="((\w|\d|-)+):((\w|\d|-)+)"

for keyval in $repos
do
  if [[ $keyval =~ $regex ]]
  then 
    repo="${BASH_REMATCH[1]}"
    upstream="${BASH_REMATCH[3]}"

    cd $repo
    echo "================================="
    echo "Start syncing $repo"
    echo "================================="
    syncRepos.sh $upstream
    echo "================================="
    echo "Finish syncing $repo"
    echo "================================="
    cd ..
  else
    echo "Skipping $keyval"
  fi
done

popd > /dev/null
