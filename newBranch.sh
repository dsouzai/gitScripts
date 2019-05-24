#!/usr/bin/sh

if [ -z "$1" ]
then
   echo "Need to specify a branch name"
   exit
fi

# Checkout master
git checkout master

# Checkout new branch
git checkout -b $1
