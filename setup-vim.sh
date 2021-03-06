#!/bin/bash

command_exists () {
    type "$1" &> /dev/null ;
}

#install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#jshint
git clone https://github.com/Shutnik/jshint2.vim.git ~/.vim/bundle/jshint2.vim/
git clone git://github.com/jpalardy/vim-slime.git ~/.vim/bundle/vim-slime/


git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive.git
git clone https://github.com/editorconfig/editorconfig-vim.git ~/.vim/bundle/editorconfig-vim/
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim/
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic.git
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript.git
git clone https://github.com/mxw/vim-jsx.git ~/.vim/bundle/vim-jsx.git
git clone git://github.com/burnettk/vim-angular.git ~/.vim/bundle/vim-angular.git
git clone git://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar 
# one of the following is giving me issues. 
#git clone https://github.com/bitc/vim-hdevtools.git ~/.vim/bundle/vim-hdevtools.git
#git clone git@github.com:lukerandall/haskellmode-vim.git ~/.vim/bundle/haskellmode-vim.git

#haskell
if command_exists cabal ; then
  cabal update
  cabal install hoogle
  cabal install cabal-install
	cabal install ghc-mod
	cabal install hdevtools
  cabal install pointfree
fi
