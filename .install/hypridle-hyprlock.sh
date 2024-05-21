#!/bin/bash

#################################################################
# hypridle と hyprlock をインストールするためのシェルスクリプト #
#################################################################

# パッケージのインストール
sudo pacman -Sy hypridle hyprlock --needed --noconfirm

# 設定ファイルをコピー
curl https://raw.githubusercontent.com/tsuyoki2000/arch-hyprland/main/dotfiles/hypr/hypridle.conf -o $HOME/.config/hypr/hypridle.conf
curl https://raw.githubusercontent.com/tsuyoki2000/arch-hyprland/main/dotfiles/hypr/hyprlock.conf -o $HOME/.config/hypr/hyprlock.conf

# 自動起動を hyprland.conf に追加
echo "exec-once = hypridle" >> $HOME/.config/hypr/hyprland.conf
