#!/bin/bash

# Git commit message playground

git log

# git add --patch {file}

# git add {file}
# git commit --amend --no-edit

git push -u origin feature-jekyll

git pull --rebase origin master

git pull origin feature-jekyll


# avoid duplicate commits
# see https://stackoverflow.com/questions/9264314/git-commits-are-duplicated-in-the-same-branch-after-doing-a-rebase/30927009
# hide some hints :p
git config --global advice.pushNonFastForward false


# show branches
git branch

# change active branch back to master
git checkout master

# merge feature branch
git merge feature-jekyll

# push merge
git push -u origin master

# next commits
git status

git add -A

git commit -m "Rough layout for exercises pages

	Modify hello_world.html to use that layout.
"

git push -u origin master