#!/usr/bin/sh

if [ -z "$1" ]
then
   echo "Need to specify a PR number"
   exit
fi

# Fetch PR
git fetch upstream pull/$1/head:pr$1

# Checkout PR
git checkout pr$1
