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
sudo pacman -Sy hyprland foot otf-ipafont wofi neovim firefox-i18n-ja --needed --noconfirm

# Hyprland の設定ファイルをコピー
mkdir -p $HOME/.config/hypr/
cp config/hypr/hyprland.conf $HOME/.config/hypr/

# foot の設定ファイルをコピー
mkdir -p $HOME/.config/foot/
cp config/foot/config.ini $HOME/.config/foot/

# 再起動
reboot
