#!/usr/bin/env bash

glob=$1
filename=$2

shopt -s globstar &>/dev/null
shopt -s extglob &>/dev/null

if [ -e "$glob" ] || [ -e "$filename" ]; then
  echo "Usage: bash/glob.sh <glob> <filename>" >&2
  exit 1
fi

case $filename in
  $glob) echo '"'"$filename"'" matches "'"$glob"'"' ;;
  *) echo '"'"$filename"'" does not match "'"$glob"'"' ;;
esac
