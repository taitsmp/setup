#!/bin/bash

#pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

#jshint
git clone https://github.com/Shutnik/jshint2.vim.git ~/.vim/bundle/jshint2.vim/
git clone git://github.com/jpalardy/vim-slime.git ~/.vim/bundle/vim-slime/

#cucumber / yadda
git clone https://github.com/tpope/vim-cucumber.git ~/.vim/bundle/vim-cucumber/

echo Add the following to your .vimrc file to get pathogen to work.
echo "execute pathogen#infect()"
echo 'let g:slime_target = "tmux"'

#TODO: automate .vimrc creation
