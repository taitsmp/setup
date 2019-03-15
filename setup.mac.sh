
# TODO - how to install git?
# brew install git

#brew install node
brew install tmux
brew install editorconfig
brew install rlwrap
brew install jq
brew install wget
#install the ag command.
brew install the_silver_searcher
brew install shellcheck
#brew install ctags 
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
brew install terraform
brew install composer 

#npm install -g jsxhint #for react.js.  must sudo?
#npm install -g STRML/JSXHint

#install conda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p "$HOME"/miniconda

#aws ecs
curl -o "$HOME"/.local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-darwin-amd64-latest
chmod u+x "$HOME"/.local/bin/ecs-cli

#install flutter
FLUTTER_VERSION=1.0.0
cd ~/Downloads
wget https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v${FLUTTER_VERSION}-stable.zip
unzip flutter_macos_v${FLUTTER_VERSION}-stable.zip
mv flutter ~
cd -

#eslint for ecmascript 6 and react
npm install -g eslint
npm install -g babel-eslint
npm install -g eslint-plugin-react

