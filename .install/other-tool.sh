#!/bin/bash

##################
# その他のツール #
##################

# インストールするパッケージ
# lxappearance（ウィンドウの外見変更）
# arc-gtk-theme（テーマ。他にも色々あるので [papirus-icon-theme とか] 試すと良い）
PACKAGE="
firefox-i18n-ja
htop
neofetch
lxappearance
arc-gtk-theme
"

# パッケージのインストール
sudo pacman -Sy $PACKAGE --needed --noconfirm
