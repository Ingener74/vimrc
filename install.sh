#!/bin/bash

# Install dependencies
sudo apt-get install ruby build-essential cmake python-dev astyle

# Install my .vimrc file
rm -rf ~/.vimrc ~/.vim/bundle/vundle
ln -s .vimrc ~/.vimrc

# Install Vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Update vim 
vim +BundleInstall

# Update bashrc
# echo "alias evim='vim ~/.vimrc'" >> ~/.bashrc
