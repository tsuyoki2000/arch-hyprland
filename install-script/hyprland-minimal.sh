#!/bin/bash

################################################################
# Hyprland（最小構成）をセットアップするためのシェルスクリプト #
################################################################

# 基本パッケージのインストール
sudo pacman -Sy hyprland foot otf-ipafont wofi wl-clipboard --needed --noconfirm

# Hyprland の設定ファイルをコピー
mkdir -p $HOME/.config/hypr/
cp /usr/share/hyprland/hyprland.conf $HOME/.config/hypr/

# hyprland.conf の編集
sed -i "s/autogenerated/#autogenerated/g" $HOME/.config/hypr/hyprland.conf
sed -i "s/$terminal = kitty/$terminal = foot/g" $HOME/.config/hypr/hyprland.conf
sed -i "s/kb_options =/kb_options = ctrl:nocaps/g" $HOME/.config/hypr/hyprland.conf
sed -i "s/$mainMod, Q, exec, $terminal/$mainMod, RETURN, exec, $terminal/g" $HOME/.config/hypr/hyprland.conf

