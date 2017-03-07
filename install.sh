#! /bin/bash 
#! -*- ENCODING = UTF-8 -*- 

# create a symbolic link for dotfiles configuration
ln .dotfilesrc ~/.dotfilesrc

# oh_my_zsh installation
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# dotfiles packages is need
dotfiles --sync --force
