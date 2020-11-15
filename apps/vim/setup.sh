#!/bin/bash

unlink ~/.vimrc
mv ~/.vimrc "~/.vimrc.bak.$(date +%s)"
ln -s ~/env/apps/vim/vimrc.vim ~/.vimrc
ls -alh ~/.vimrc

mkdir -p ~/.vim/sessions

# install plugins using vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# vim +PlugInstall +qall  # TODO: fix this. Github Action timeout
# TODO: add commands for other plugin managers

# install ctrlp
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/vim/bundle/ctrlp.vim

# TODO: add flag to run this
function install_YouCompleteMe {
  git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
  cd ~/.vim/bundle/YouCompleteMe
  git submodule update --init --recursive
  brew install cmake macvim  # TODO: Mac only. YCM doesn't work with the normal Vim.
  python3 install.py --all  # HUGE files!
}


