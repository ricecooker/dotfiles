#!/bin/bash
#
# rbenv
#
if which rbenv; then 
  eval "$(rbenv init -)" 
  export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
else
  return 1
fi
