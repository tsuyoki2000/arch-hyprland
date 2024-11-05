#!/bin/bash

#################################################################
# 壁紙関連のツールをインストールするためのシェルスクリプト #
#################################################################

# パッケージのインストール
sudo pacman -Sy swaybg waypaper --needed --noconfirm

# 自動起動を hyprland.conf に追加
echo "exec-once = waypaper --restore" >> $HOME/.config/hypr/hyprland.conf

