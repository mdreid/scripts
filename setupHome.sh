#!/bin/bash

# A simple script that sets up soft links for the home directory config files to
# point to the config files in the dotfiles directory
# Usage: setupHome.sh

ln -s $PWD/dotfiles/.bashrc.local ~/.bashrc.local
ln -s $PWD/dotfiles/.gitconfig ~/.gitconfig
ln -s $PWD/dotfiles/.vimrc ~/.vimrc
