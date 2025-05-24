#!/bin/bash

##################
# その他のツール #
##################

# インストールするパッケージ
# dunst（通知）
# fzf（曖昧検索）
# ripgrep（曖昧検索）
# nwg-look（ウィンドウの外見変更。lxappearance も一応動作するようだ）
# orchis-theme（TGKのテーマ。arc-gtk-theme が良かったがAURになってしまった。他にもアイコンで [papirus-icon-theme]とかある）
PACKAGE="
dunst
fzf
ripgrep
htop
fastfetch
nwg-look
orchis-theme
firefox-i18n-ja
"

# パッケージのインストール
sudo pacman -Sy $PACKAGE --needed --noconfirm
