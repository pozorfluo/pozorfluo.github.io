#!/bin/bash

# Git commit message playground
git log
git status

git add -A

<<<<<<< HEAD
git commit -m "List exercises and nav links in data files"

# git add --patch {file}

# git add {file}
# git commit --amend --no-edit

git push -u origin feature-jekyll

git pull --rebase origin master
=======
git commit -m "Flesh out navigation.html

	Replace navigation button label <<back with inline svg icon.

	Create css rule for that inline svg icon to behave like button text 
	label.

	Replace quick and dirty favicon.ico with something visually 
	relevant for this site.

	Remove *.Zone.identifier file added by windows when moving the
	previous temp favicon.ico to the repo.
"


git push -u origin feature-jekyll
>>>>>>> 8273268bc4b8b6794b6b11665e21000ba6c8f319
