
#debian or ubuntu setup files. 

apt-get install editorconfig

# Install rlwrap. Required for node in tmux
sudo apt-get install -y rlwrap

# Install node, since I'm using it a lot
sudo apt-get install -y nodejs

git clone https://github.com/universal-ctags/ctags.git
cd ctags || return
./autogen.sh 
./configure
make
sudo make install
cd .. 
rm -rf ctags


# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
npm install -g jsxhint #for react.js
npm install -g STRML/JSXHint

#lint for ecmascript 6 and react - can probably remove jshint above. 
npm install -g eslint
npm install -g babel-eslint
npm install -g eslint-plugin-react


