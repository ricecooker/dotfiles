#!/bin/bash
#
# Sets up java environment
#
if [ `uname` == "Darwin" ]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
fi
