# copy files to ~/env/ 
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
mkdir -p ~/env
cp -R $SCRIPT_DIR/* ~/env/
chmod -R +x $SCRIPT_DIR/*

# bash
mv ~/.bashrc ~/.bashrc.bak
ln -s ~/env/apps/bash/bashrc.sh ~/.bashrc

# zsh
mv ~/.zshrc ~/.zshrc.bak
ln -s ~/env/apps/zsh/zshrc.sh ~/.zshrc

# tmux
mv ~/.tmux.conf ~/.tmux.conf.bak
ln -s ~/env/apps/tmux/conf.sh ~/.tmux.conf

# vim
$SCRIPT_DIR/apps/vim/setup.sh

