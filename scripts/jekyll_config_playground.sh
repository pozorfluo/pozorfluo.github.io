#!/bin/bash

# Jekyll config playground
# see https://jekyllrb.com/docs/installation/

# install dependencies
sudo apt install ruby-full build-essential

# set Ruby Gems installation directory for current user
echo '# Install Ruby Gems to ~/gems' >> ~/.profile
echo 'export GEM_HOME="${HOME}/gems"' >> ~/.profile
echo 'export PATH="${HOME}/gems/bin/${PATH:+:${PATH}}"' >> ~/.profile
source ~/.profile
echo $PATH
echo $GEM_HOME

# install Jekyll
gem install jekyll bundler

# create a branch for introduction of Jekyll
git checkout -b feature-jekyll master 
git push origin feature-jekyll

# create a Gemfile list project dependencies
bundle init

# add Jekyll as a dependency
echo 'gem "jekyll"' >> Gemfile

# install Jekyll for current project
bundle

# Make sure to use the Jekyll version defined in Gemfile
#  -> prefix all further Jekyll commands with 'bundle exec'

# create a .gitignore file tailored for Jekyll
cat <<-GITIGNORE > .gitignore
	# volatile folders
	.tmp/*

	# jekyll
	_site/
	.sass-cache/
	.jekyll-cache/
	.jekyll-metadata

	# github pages
	Gemfile.lock

	# vs code
	.vscode/*
	!.vscode/settings.json
	!.vscode/tasks.json
	!.vscode/launch.json
	!.vscode/extensions.json
GITIGNORE

# build the site with current draft
bundle exec jekyll build

# build and serve at http://localhost:4000
bundle exec jekyll serve

# keep a hard copy of site before Jekyll introduction to showcase rough state
# mkdir rough
# cp -r index.html css data html js rough

# make a directory for layouts
mkdir _layouts

# make a directory for includes
mkdir _includes

# make a directory for data
mkdir _data