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

function green() {
    echo -e "$GREEN$*$NORMAL"
}

function yellow() {
    echo -e "$YELLOW$*$NORMAL"
}

# hyprland 最小構成
green "Installing Hyprland Minimal..."
bash install-script/hyprland-minimal.sh

# 再起動
green ""
green "Install Complete."
green "Type 'reboot' or 'poweroff'"
#reboot
