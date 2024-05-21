#!/bin/bash

##################
# その他のツール #
##################

# インストールするパッケージ
# dunst（通知）
# fzf（曖昧検索）
# ripgrep（曖昧検索）
# lxappearance（ウィンドウの外見変更）
# arc-gtk-theme（テーマ。他にも色々あるので [papirus-icon-theme とか] 試すと良い）
PACKAGE="
dunst
fzf
ripgrep
htop
fastfetch
lxappearance
arc-gtk-theme
firefox-i18n-ja
"

# パッケージのインストール
sudo pacman -Sy $PACKAGE --needed --noconfirm
