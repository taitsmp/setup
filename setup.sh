# Fetch and link to config files
# Linking lets me commit changes I make easily
git clone https://github.com/tlm2021/devenv.git
ln -sb devenv/.tmux.conf ~
ln -sb devenv/.bash_profile ~
ln -sb devenv/.bashrc ~
ln -sb devenv/.bashrc_custom ~
ln -sb devenv/.gitconfig ~
ln -sb devenv/.jshintrc ~
ln -sd .vim devenv/.vim 

# Install rlwrap. Required for node in tmux
sudo apt-get install -y rlwrap

# Install node, since I'm using it a lot
sudo apt-get install -y nodejs
