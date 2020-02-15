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