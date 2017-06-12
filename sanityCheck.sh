#!/usr/bin/sh

if [ "$1" == "master" ]
then
   echo "Will not perform this action on $1"
   exit
fi
