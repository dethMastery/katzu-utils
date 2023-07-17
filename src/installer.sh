#!/usr/bin/env bash

read -p "Do you want to install this package? [y/N] : " option

if [[ $option =~ ^[y]+$ || $option =~ ^[Y]+$ ]]; then
  mkdir ~/.config/.kUtils
  cd ~/.config/.kUtils
  rm -rf *
  git clone https://github.com/dethMastery/katzu-utils.git
  cd katzu-utils/src
  mv * ~/.config/.kUtils
  cd ~/.config/.kUtils
  rm -rf katzu-utils
  rm install.sh

  cp ~/.zshrc ~/.zshrc-kUtils-bak
  echo -e '\n\n# katzu Utils \nalias k-utils="~/.config/.kUtils/run.sh"' >> ~/.zshrc
  sleep 1 &
  wait
  clear
  
  echo "'katsu's Utils' is installed to your console"
  echo "please run 'source ~/.zshrc' first"
  echo "and then try run 'k-utils' in your zsh"
fi