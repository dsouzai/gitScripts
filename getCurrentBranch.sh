#!/usr/bin/sh

# Get the current branch
#git name-rev --name-only HEAD
git rev-parse --abbrev-ref HEAD
