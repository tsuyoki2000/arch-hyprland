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
# （操作メッセージを無効化）
sed -i 's/shutdown",/poweroff",/g' $HOME/.config/waybar/config.jsonc

# 自動起動を hyprland.conf に追加
#echo "exec-once = waybar" >> $HOME/.config/hypr/hyprland.conf
sed -i 's/# exec-once = nm-applet &/# exec-once = nm-applet \&\nexec-once = waybar",/g' $HOME/.config/hypr/hyprland.conf
