#!/bin/bash

# Source everything in ~/.bash/*
echo "Sourcing..."
for file in ~/.bash/scripts.d/*.*sh; do
  desc=`head -n 3 $file | tail -n 1`
  echo -n "  $desc ($file)..."
  source $file
  echo "[done]"
done
