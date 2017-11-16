#!/bin/bash
#
# rbenv
#
if which rbenv > /dev/null; then 
  eval "$(rbenv init -)" > /dev/null
  export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"
else
  return 1
fi
