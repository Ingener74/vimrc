#!/bin/bash

# Install my .vimrc file
cp .vimrc ~

# Install Vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Update vim 
vim +BundleInstall

# Update bashrc
# echo "alias evim='vim ~/.vimrc'" >> ~/.bashrc
