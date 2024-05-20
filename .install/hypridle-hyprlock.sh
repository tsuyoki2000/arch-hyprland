#!/bin/bash

#################################################################
# hypridle と hyprlock をインストールするためのシェルスクリプト #
#################################################################

# パッケージのインストール
sudo pacman -Sy hypridle hyprlock --needed --noconfirm

# hyprland.conf に「exec-once = hypridle」を追加
