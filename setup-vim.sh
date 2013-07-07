#!/bin/bash

#pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

#jshint
git clone https://github.com/Shutnik/jshint2.vim.git ~/.vim/bundle/jshint2.vim/

echo Add the following to your .vimrc file to get pathogen to work.
echo "execute pathogen#infect()"

#TODO: automate .vimrc creation
