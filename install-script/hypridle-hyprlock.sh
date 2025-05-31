#!/bin/bash

#################################################################
# hypridle と hyprlock をインストールするためのシェルスクリプト #
#################################################################

# パッケージのインストール
sudo pacman -Sy hypridle hyprlock --needed --noconfirm

# 設定ファイルをコピー
cp /usr/share/hypr/hypridle.conf $HOME/.config/hypr/
cp /usr/share/hypr/hyprlock.conf $HOME/.config/hypr/

# 自動起動を hyprland.conf に追加
sed -i 's/# exec-once = $terminal/exec-once = hypridle\n# exec-once = $terminal/g' $HOME/.config/hypr/hyprland.conf
