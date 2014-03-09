
# TODO - how to install git?

brew install editorconfig
brew install rlwrap
#install the ag command.
brew install the_silver_searcher

npm install -g jshint

#install - ctags patch for better php parsing
brew uninstall ctags
brew doctor
brew update
cd /usr/local/Library/Formula
curl https://gist.githubusercontent.com/taitsmp/9199869/raw/eaaf06d69fb6b5376e97ac5b930f9290b6edae4b/- | git apply
brew install ctags --HEAD
