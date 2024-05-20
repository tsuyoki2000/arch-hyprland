#!/bin/bash

#################################################################
# hypridle と hyprlock をインストールするためのシェルスクリプト #
#################################################################

# パッケージのインストール
sudo pacman -Sy hypridle hyprlock --needed --noconfirm

# 設定ファイルのコピー
HYPR_DIR=$HOME/.config/hypr/
mkdir -p $HYPR_DIR
cp ../dotfiles/hypr/hypridle.conf $HYPR_DIR

# hyprland.conf に「exec-once = hypridle」を追加
