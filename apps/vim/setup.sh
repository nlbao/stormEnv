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

