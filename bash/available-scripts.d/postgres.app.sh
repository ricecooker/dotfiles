#!/bin/bash
#
# Postgres.app path
#
if [ -d "/Applications/Postgres.app/Contents/Versions/9.5/bin" ]; then
  export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.5/bin
fi
