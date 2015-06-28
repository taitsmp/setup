
ln -is dotfiles/.tmux.conf ~
ln -is dotfiles/.bash_profile ~
ln -is dotfiles/.bashrc ~
ln -is dotfiles/.bashrc_custom ~
ln -is dotfiles/.bash_prompt ~
ln -is dotfiles/.vimrc ~
ln -is dotfiles/.screenrc ~
ln -is dotfiles/.eslintrc ~

#todo: what about emacs?

# global git templates. 
git config --global init.templatedir '~/.git_template'
mkdir -p ~/.git_template/hooks

# -- start git auto ctags
# http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html
# https://github.com/shawncplus/phpcomplete.vim/wiki/Patched-ctags
tee ~/.git_template/hooks/ctags << 'EOF'
#!/bin/sh
set -e
PATH="/usr/local/bin:$PATH"
trap "rm -f .git/tags.$$" EXIT
ctags --tag-relative --fields=+aimS -Rf.git/tags.$$ --exclude=.git --languages=-javascript,sql
mv .git/tags.$$ .git/tags
EOF

H1=$(cat <<'DONE'
#!/bin/sh
.git/hooks/ctags >/dev/null 2>&1 &
DONE
)

for I in post-commit post-merge post-checkout
do
  echo "$H1" > ~/.git_template/hooks/${I}
done

tee ~/.git_template/hooks/post-rewrite << 'EOF'
#!/bin/sh
case "$1" in
  rebase) exec .git/hooks/post-merge ;;
esac
EOF

chmod 755 ~/.git_template/hooks/ctags
chmod 755 ~/.git_template/hooks/post-rewrite
chmod 755 ~/.git_template/hooks/post-commit
chmod 755 ~/.git_template/hooks/post-merge
chmod 755 ~/.git_template/hooks/post-checkout
# -- end git auto ctags

git config --global alias.ctags '!.git/hooks/ctags'
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"
#http://stackoverflow.com/questions/15316601/why-is-git-pull-considered-harmful  #not really buying this argument.
git config --global alias.up '!git  fetch --all -p; git merge --ff-only @{u}'
git config --global push.default upstream


