#!/bin/bash

###################################################
# waybar をインストールするためのシェルスクリプト #
###################################################

# パッケージのインストール
sudo pacman -Sy waybar ttf-font-awesome --needed --noconfirm

# 設定ファイルのコピー
mkdir -p $HOME/.config/waybar/
cp /etc/xdg/waybar/* $HOME/.config/waybar/
curl https://raw.githubusercontent.com/Alexays/Waybar/refs/heads/master/resources/custom_modules/power_menu.xml -o $HOME/.config/waybar/power_menu.xml

# 自動起動を hyprland.conf に追加
echo "exec-once = waybar" >> $HOME/.config/hypr/hyprland.conf
