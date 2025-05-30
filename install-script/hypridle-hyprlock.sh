#!/bin/bash

#################################################################
# hypridle と hyprlock をインストールするためのシェルスクリプト #
#################################################################

# パッケージのインストール
sudo pacman -Sy hypridle hyprlock --needed --noconfirm

# 設定ファイルをコピー
cp /usr/share/hypr/hypridle.conf $HOME/.config/hypr/
cp /usr/share/hypr/hyprlock.conf $HOME/.config/hypr/
#curl https://raw.githubusercontent.com/tsuyoki2000/arch-hyprland/main/dotfiles/hypr/hypridle.conf -o $HOME/.config/hypr/hypridle.conf
#curl https://raw.githubusercontent.com/tsuyoki2000/arch-hyprland/main/dotfiles/hypr/hyprlock.conf -o $HOME/.config/hypr/hyprlock.conf

# 自動起動を hyprland.conf に追加
#echo "exec-once = hypridle" >> $HOME/.config/hypr/hyprland.conf
sed -i 's/# exec-once = $terminal/exec-once = hypridle\n# exec-once = $terminal/g' $HOME/.config/hypr/hyprland.conf
