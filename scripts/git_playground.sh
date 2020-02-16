#!/bin/bash

# Git commit message playground
git log
git status

git add -A

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