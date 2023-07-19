#!/usr/bin/env bash

# BASE_SOURCE="$HOME/.config/.kUtils"
BASE_SOURCE="$HOME/repo/katsu-zu/katzu-utils/src"
HOME_SOURCE="$BASE_SOURCE/scripts"

if [[ -z $1 ]]; then
  echo "No argument inputting.."
  echo ""
  source "$HOME_SOURCE/help.sh"
else
  if [[ $1 =~ ^[clear]+$ || $1 =~ ^[cls]+$ ]]; then
    clear
  elif [[ $1 =~ ^[nodeflow]+$ || $1 =~ ^[nf]+$ ]]; then
    source "$HOME_SOURCE/node_build.sh"
  elif [[ $1 =~ ^[ignored]+$ || $1 =~ ^[ig]+$ ]]; then
    source "$HOME_SOURCE/ignored.sh"
  elif [[ $1 =~ ^[help]+$ || $1 =~ ^[h]+$ ]]; then 
    source "$HOME_SOURCE/help.sh"
  elif [[ $1 =~ ^[update]+$ ]]; then
    source "$BASE_SOURCE/updater.sh"
  fi
fi