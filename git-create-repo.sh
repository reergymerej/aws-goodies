#!/usr/bin/env bash

REPO=$1
REPO_PATH=/srv/git/$REPO.git

mkdir -p $REPO_PATH
cd $REPO_PATH
git init --bare --quiet
chown -R git:git $REPO_PATH

echo git@git.reergymerej.com:$REPO_PATH
