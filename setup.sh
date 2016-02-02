#!/bin/bash
#
# Setup dotfiles on a new host
#
# TODO Add rename existing
#

# Get this setup scripts directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Linking bash scripts..."
if [ ! -f ~/.bash ]; then ln -s $DIR/bash ~/.bash; fi
if [ ! -f ~/.bash_profile ]; then ln -s $DIR/bash_profile ~/.bash_profile; fi
if [ ! -f ~/.bashrc ]; then ln -s $DIR/bashrc ~/.bashrc; fi

echo "Linking vim scripts..."
if [ ! -f ~/.vim ]; then ln -s $DIR/vim ~/.vim; fi
if [ ! -f ~/.vimrc ]; then ln -s $DIR/vimrc ~/.vimrc; fi

echo "[Done]"
