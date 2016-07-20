#!/usr/bin/sh

currentBranch=`getCurrentBranch.sh`
prepForMergeRequest.sh $currentBranch $1
