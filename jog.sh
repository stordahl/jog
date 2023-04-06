#!/bin/sh
#
# JOG - because I can never remember npm script names
# by Jacob Stordahl
#

selected=`jq -r '.scripts | keys[]' package.json | fzf`

if [[ -z $selected ]]; then
  exit 0
fi

npm run $selected
