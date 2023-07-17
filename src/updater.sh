#!/usr/bin/env bash

read -p "Do you want to update this package? [y/N] : " option

if [[ $option =~ ^[y]+$ || $option =~ ^[Y]+$ ]]; then
  cd ~/.config/.kUtils
  rm -rf *
  git clone https://github.com/katzEco/katzu-utils.git
  cd katzu-utils/src
  mv * ~/.config/.kUtils
  cd ~/.config/.kUtils
  rm -rf katzu-utils
  rm install.sh

  chmod +x *
  chmod +x src/*

  clear
  echo "This package is successfully upgraded!"
  echo "Please enjoy :) - dethM"
fi