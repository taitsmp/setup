
# TODO - how to install git?
# brew install git

#brew install node
brew install tmux
brew install editorconfig
brew install rlwrap
brew install jq
#install the ag command.
brew install the_silver_searcher

npm install -g jsxhint #for react.js.  must sudo?
npm install -g STRML/JSXHint

#eslint for ecmascript 6 and react
npm install -g eslint
npm install -g babel-eslint
npm install -g eslint-plugin-react

#make haskell work on the mac with Xcode 5.
#curl -O http://www.haskell.org/platform/ghc-clang-wrapper
#chmod a+x ghc-clang-wrapper
#sudo mv ghc-clang-wrapper /usr/bin/ #yuck
#sudo /usr/bin/ghc-clang-wrapper

#install - ctags patch for better php parsing
brew uninstall ctags
brew doctor
brew update
cd /usr/local/Library/Formula
curl https://gist.githubusercontent.com/taitsmp/9199869/raw/eaaf06d69fb6b5376e97ac5b930f9290b6edae4b/- | git apply
brew install ctags --HEAD
