#!/bin/bash

##################
# その他のツール #
##################

# インストールするパッケージ
# dunst（通知）
# lxappearance（ウィンドウの外見変更）
# arc-gtk-theme（テーマ。他にも色々あるので [papirus-icon-theme とか] 試すと良い）
PACKAGE="
dunst
htop
neofetch
lxappearance
arc-gtk-theme
firefox-i18n-ja
"

# パッケージのインストール
sudo pacman -Sy $PACKAGE --needed --noconfirm
