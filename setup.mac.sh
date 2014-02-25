
# TODO - how to install git?

brew install editorconfig
brew install rlwrap

npm install -g jshint

#install - ctags patch for better php parsing
brew unlink ctags
brew doctor
brew update
curl https://gist.githubusercontent.com/taitsmp/9199869/raw/a45b3f92456e9a63b107c8a83ccb28923bd14ea6/- | git apply
brew install ctags --HEAD
