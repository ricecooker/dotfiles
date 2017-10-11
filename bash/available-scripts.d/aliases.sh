#!/bin/bash
#
# Aliases
#

# Common
alias ll='ls -lF'
alias ls='ls -F'
alias env='env | sort'
if [ `uname` == "Linux" ]; then
  alias ls='ls --color'
fi

# Git
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gs='git status -sb'

