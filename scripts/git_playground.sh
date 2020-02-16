#!/bin/bash

# Git commit message playground
git log
git status

git add -A

git commit -m "List exercises and nav links in data files"

# git add --patch {file}

# git add {file}
# git commit --amend --no-edit

git push -u origin feature-jekyll

git pull --rebase origin master