#!/usr/bin/sh

if [ "$1" == "master" -o "$1" == "clean" ]
then
   echo "Will not perform this action on $1"
   exit
fi
