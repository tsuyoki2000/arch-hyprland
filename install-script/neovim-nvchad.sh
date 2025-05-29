#!/bin/bash

########################################################
# NvChad（Neovimディストリビューション）のセットアップ #
########################################################

NVIM_CONFIG="${HOME}/.config/nvim/init.lua"

if [ ! -e $NVIM_CONFIG ]; then
  mkdir -p $HOME/.config/nvim/
  git clone https://github.com/NvChad/starter $HOME/.config/nvim
  rm -rf $HOME/.config/nvim/.git
fi

# ripgrep のインストール
sudo pacman -S ripgrep --needed --noconfirm

# Nerd フォントのインストール
sudo pacman -S ttf-dejavu-nerd --needed --noconfirm
#sudo pacman -S ttf-ubuntu-mono-nerd --needed --noconfirm
