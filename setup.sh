#! /bin/bash

######################################################
# Hyprland を セットアップするためのシェルスクリプト #
######################################################

# /etc/environment の編集（個人設定するファイルが分からん。.profile？）
ETC_ENV="/etc/environment"
sudo sh -c "echo EDITOR=nvim >> $ETC_ENV"
sudo sh -c "echo WLR_NO_HARDWARE_CURSORS=1 >> $ETC_ENV"
sudo sh -c "echo WLR_RENDERER_ALLOW_SOFTWARE=1 >> $ETC_ENV"

# パッケージのインストール
sudo pacman -Sy hyprland foot otf-ipafont wofi firefox-i18n-ja --needed --noconfirm

# Hyprland の設定ファイルをコピー
mkdir -p $HOME/.config/hypr/
cp config/hypr/hyprland.conf $HOME/.config/hypr/

# 再起動
reboot
