#!/bin/bash
#
# bash_profile
#
# Meant to be linked to via ~/.bash_profile and to be used while cloning
# my dotfiles repo from version control.
#
# Features
# * Runs all sources all bash scripts in .bash/scripts.d so I don't end
#   up with an forever long bash_profile
# * Check if my local dotfiles is current with upstream
#
# Wishlist / To do
# * Better message if there are dirty files or upstream changes
# * Better handling of available-scripts.d and scripts.d.  Such as populate scripts.d
#   at setup and then gitignore it
#

# Source everything in ~/.bash/*
echo "Sourcing from ~/.bash/scripts.d..."
for file in ~/.bash/scripts.d/*.*sh; do
  desc=`head -n 3 $file | tail -n 1`
  echo -n "  $desc (`basename $file`)..."
  source $file
  if [ "$?" -eq 0 ]; then
    echo "[done]"
  else 
    echo "[fail]"
  fi
done

# Check repo
REPO=$(dirname `readlink .bash_profile`)
echo "Checking status of $REPO..."
git -C $REPO fetch 2> /dev/null
git -C $REPO status -sb
echo "Done"
