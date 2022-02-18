#!/bin/bash

#clones dotfiles git repo and copies over files without conflicts
#sets up .dotfiles git directory and places contents into dotfiles-tmp folder
##git clone --separate-git-dir=$HOME/.dotfiles #/path/to/repo# $HOME/dotfiles-tmp
#copies temp dotfiles into home dir
cp ~/dotfiles-tmp/* ~
#delete temp directory
rm -r ~/dotfiles-tmp/
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
