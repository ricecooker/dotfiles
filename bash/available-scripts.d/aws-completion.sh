#!/bin/bash
#
# AWSCLI command completion
#

COMPLETER=`which aws_completer`
if [ $? -eq 0 ]; then
  complete -C "$COMPLETER" aws
fi
