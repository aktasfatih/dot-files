#!/bin/bash

# Install Vundle
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]
then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
fi

# Copy the vim rc
ln -s -F $(pwd)/.vimrc ~/.vimrc

echo "You need to run PluginInstall inside vim";
