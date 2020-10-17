#!/bin/bash

unlink ~/.vimrc
mv ~/.vimrc "~/.vimrc.bak.$(date +%s)"
ln -s ~/env/apps/vim/vimrc ~/.vimrc
ls -alh ~/.vimrc

mkdir -p ~/.vim/sessions
