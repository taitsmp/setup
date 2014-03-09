#!/bin/bash

#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

#jshint
git clone https://github.com/Shutnik/jshint2.vim.git ~/.vim/bundle/jshint2.vim/
git clone git://github.com/jpalardy/vim-slime.git ~/.vim/bundle/vim-slime/
git clone https://github.com/editorconfig/editorconfig-vim.git ~/.vim/bundle/editorconfig-vim/
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/ctrlp.vim/

#cucumber / yadda
git clone https://github.com/tpope/vim-cucumber.git ~/.vim/bundle/vim-cucumber/


