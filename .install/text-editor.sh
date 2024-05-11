#!/bin/bash

############################################################
# テキストエディタをインストールするためのシェルスクリプト #
############################################################

# パッケージのインストール
sudo pacman -Sy neovim --needed --noconfirm

# /etc/environment にデフォルトアプリを設定
ETC_ENV="/etc/environment"
sudo sh -c "echo EDITOR=nvim >> $ETC_ENV"



# NvChad（Neovimディストリビューション）のセットアップ
NVIM_CONFIG="${HOME}/.config/nvim/init.lua"
if [ ! -e $NVIM_CONFIG ]; then
  mkdir -p $HOME/.config/nvim/
  git clone https://github.com/NvChad/starter $HOME/.config/nvim
  rm -rf $HOME/.config/nvim/.git
fi

# NvChad で使用する ripgrep のインストール
sudo pacman -S ripgrep --needed --noconfirm

