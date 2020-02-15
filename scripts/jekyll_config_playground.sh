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

# add .gitignore file tailored for Jekyll
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
GITIGNORE

# # track these files, if they exist
# !.gitignore