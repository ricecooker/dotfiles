#!/bin/bash
#
# Sets up java environment
#
if [ `uname` == "Darwin" ]; then
  export JAVA_HOME="/Library/Java/Home"
fi
