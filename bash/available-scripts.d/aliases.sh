#!/bin/bash
#
# Aliases
#

alias ll='ls -lF'
alias ls='ls -F'
alias env='env | sort'
if [ `uname` == "Linux" ]; then
  alias ls='ls --color'
fi
