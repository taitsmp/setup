# Fetch and link to config files
# Linking lets me commit changes I make easily
git clone https://github.com/tlm2021/devenv.git

./setup-vim.sh

ln -sb dotfiles/.tmux.conf ~
ln -sb dotfiles/.bash_profile ~
ln -sb dotfiles/.bashrc ~
ln -sb dotfiles/.bashrc_custom ~
ln -sb dotfiles/.tmux.conf ~

