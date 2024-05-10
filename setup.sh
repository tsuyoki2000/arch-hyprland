#!/bin/bash

#####################################################
# Hyprland をセットアップするためのシェルスクリプト #
#####################################################

NORMAL=$(tput sgr0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2; tput bold)
YELLOW=$(tput setaf 3)

function red() {
    echo -e "$RED$*$NORMAL"
}

function yellow() {
    echo -e "$YELLOW$*$NORMAL"
}

function green() {
    echo
    echo -e "$GREEN$*$NORMAL"
}

# hyprland（最小構成）のインストール
green "Installing Hyprland Minimal..."
bash .install/hyprland-minimal.sh

# ディスプレイマネージャー（ログインマネージャー）のインストール
green "Installing DisplayManager..."
bash .install/display-manager.sh

# waybar のインストール
# pacman-conf の編集
# fish のインストール
# yay のインストール
# fcitx5 のインストール
# Neovim のインストール
# ブラウザのインストール
# CLI ファイルマネージャーのインストール
# GUI ファイルマネージャーのインストール
# 自分用の設定

# 再起動
green ""
green "Install Complete."
green "Type 'reboot' or 'poweroff'"
#reboot
