#!/bin/bash

## TODO: Add all laptop specific packages

package_manager =
echo "### Installing laptop packages ###"
echo "Checking for an existing AUR helper"
# Check if yay or paru is installed and if not install yay
if command -v yay &> /dev/null; then
  echo "yay found"
  package_manager=yay
elif command -v paru &> /dev/null; then
  echo "paru found"
  package_manager=paru
else
  echo "No AUR helper found, installing yay"
  sleep 2
  sudo pacman -S --needed --noconfirm git base-devel
  git clone https://aur.archlinux.org/yay-bin.git
  cd yay-bin
  makepkg -si
  if command -v yay &> /dev/null; then
    package_manager=yay
  fi
  echo "yay not found after installation"
fi
