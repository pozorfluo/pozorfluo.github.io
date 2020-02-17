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

git commit -m "Add cosmetic header to layouts.

	Made units used in showcase.css more consistent for the header
	to behave properly.

	Inline close_cross.svg, it is convenient to do so in the layout
	and allows tweak via css.

	Adjust .closebox css rule to fit with new header.
"

git push -u origin master