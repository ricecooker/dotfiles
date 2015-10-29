#!/bin/bash
#
# Generic environment settings
#

# Set line editor to vi
set -o vi
export EDITOR="vim"

# BSD ls stuff
if [ `uname` == "Darwin" ]; then
  # Let terminal know we have color!
  export CLICOLOR=1
  # ls color format
  export LSCOLORS=gxfxcxdxbxegedabagacad
fi

# Hostname trickery because we can't bother to DNS
if [ `uname` == "Linux" ]; then
  HOSTNAME=`hostname --fqdn`
  LS_COLORS='no=00:fi=00:di=00;36:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.jpg=00;35:*.gif=00;35:*.bmp=00;35:*.xbm=00;35:*.xpm=00;35:*.png=00;35:*.tif=00;35'
fi

# Prompt
export PS1='\u@$HOSTNAME:\w$(__git_ps1 " (%s)")\$ '

# Be able to set tab title in OSX
if [ "$TERM_PROGRAM" == "Apple_Terminal" ]; then
  function settitle {
    printf "\033]-;%s\007" "$1"
  }
fi

export PATH=~/bin:$PATH
