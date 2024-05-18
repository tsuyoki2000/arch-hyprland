#!/bin/bash

##################################################################
# 自分用の Hyprland 環境をセットアップするためのシェルスクリプト #
##################################################################

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

# fish のインストール
green "Installing fish..."
bash .install/fish.sh

# フォントのインストール
green "Installing font..."
bash .install/font.sh

# CLI ファイルマネージャーのインストール
green "Installing FileManager(CLI)..."
bash .install/filemanager-cli.sh


# 再起動
green "Install Complete."
green "Type 'reboot' or 'poweroff'"
#reboot

