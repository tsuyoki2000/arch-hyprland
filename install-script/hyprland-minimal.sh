#!/bin/bash

################################################################
# Hyprland（最小構成）をセットアップするためのシェルスクリプト #
################################################################

# 基本パッケージのインストール
sudo pacman -Sy hyprland foot otf-ipafont wofi --needed --noconfirm

# hyprland.conf の編集
HYPR_CONF=$HOME/.config/hypr/hyprland.conf
sed -i "s/$terminal = kitty/$terminal = foot/g" HYPR_CONF
