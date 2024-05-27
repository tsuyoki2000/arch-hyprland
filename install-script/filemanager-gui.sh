#!/bin/bash

#####################################################################
# GUI ファイルマネージャー をインストールするためのシェルスクリプト #
#####################################################################

# パッケージのインストール
# thunar（thunar本体）
# thunar-archive-plugin（コンテキストメニューに圧縮・解凍のメニューを追加）
# file-roller（GNOME の圧縮・解凍ソフト）
echo "Installing thunar..."
sudo pacman -Sy thunar thunar-archive-plugin file-roller --needed --noconfirm

# （hyprland.conf のファイルマネージャーを dolphin から thunar に変更）
sed -i "s/$fileManager = dolphin/$fileManager = thunar/g" $HOME/.config/hypr/hyprland.conf

# 他にも以下のようなファイルマネージャーがある。
# lxde の pcmanfm
# kde の dolphin
# GNOME の nautilus
# Cinnamon の nemo
