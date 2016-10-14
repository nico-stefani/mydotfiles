#! /bin/bash 
#! -*- ENCODING = UTF-8 -*- 

# create a symbolic link for dotfiles configuration
ln .dotfilesrc ~/.dotfilesrc
# dotfiles packages is need
dotfiles --sync --force
