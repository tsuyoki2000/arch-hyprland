#!/bin/bash

#################################################################
# hypridle と hyprlock をインストールするためのシェルスクリプト #
#################################################################

# パッケージのインストール
sudo pacman -Sy hypridle hyprlock --needed --noconfirm

curl https://raw.githubusercontent.com/tsuyoki2000/arch-hyprland/main/dotfiles/hypr/hypridle.conf -o $HOME/.config/hypr/hypridle.conf

# hyprland.conf に「exec-once = hypridle」を追加
