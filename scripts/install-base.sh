#!/bin/bash

package_manager =
echo "### Installing base packages ###"

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

## Install base packages
echo "Installing all apps and fonts"
sudo pacman -S --needed --noconfirm \
  hyprland \
  swww \
  alacritty \
  wofi \
  waybar \
  neovim \
  dunst \
  zsh \
  nitch \
  nodejs-material-design-icons \
  ttf-font-awesome 6.6.0-1

## AUR packages
$package_manager -S --needed --noconfirm \
  ttf-material-design-icons-git \
  kando-bin \
  autojump
