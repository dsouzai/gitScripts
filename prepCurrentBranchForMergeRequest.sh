#!/usr/bin/sh

currentBranch=`getCurrentBranch.sh`
pushForMergeRequest.sh $currentBranch $1
