#!/usr/bin/env bash

# GNB = Git New Branch
# Creates an upstream branch and local branch

BRANCH_NAME=$1

echo $BRANCH_NAME

git checkout -b $1

LOCAL_BRANCH_NAME=$(git branch | grep \* | cut -d ' ' -f2)

echo $LOCAL_BRANCH_NAME

git push -u origin $LOCAL_BRANCH_NAME
