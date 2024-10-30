#!/bin/bash
echo "### Configuring ZSH"

if command -v git &> /dev/null; then
  echo "git found"
else
  echo "git not found, installing"
  sudo pacman -S --needed --noconfirm git
fi

if [ -d ~/.zsh ]; then
  echo "zsh directory found"
else
  echo "zsh directory not found, creating"
  mkdir ~/.zsh
fi

cd ~/.zsh

read -p "Do you want to install plugins for zsh? [y/N] " install_zsh_plugins

if [[ $install_zsh_plugins == "y" ]]; then
  echo "Installing plugins"
  git clone https://github.com/zsh-users/zsh-autosuggestions.git
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
  git clone https://github.com/zsh-users/zsh-completions.git

fi

echo "Insatlling starship"
sudo pacman -S --needded --noconfirm starship

echo "Installing shell utilities"
sudo pacman -S --needed --noconfirm eza bat
