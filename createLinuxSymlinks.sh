#! /bin/bash

# Create Linux symlinks for config files
ln -s .vimrc ~/.vimrc
ln -s init.lua ~/.config/nvim/
ln -s mpv.conf ~/.config/mpv/
ln -s .inputrc ~/
ln -s .dircolors ~/
ln -s .xsession ~/
ln -s .Xresources ~/
ln -s .bashrc ~/

# This installs the vim bundle manager vundle This must be done before you first run vim to install the rest of the packages
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# This applies the X resources file which applies the colours for the system 
xrdb ~/.Xresources
