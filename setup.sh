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

# 一時的に英語化
export LANG=C

# pacman-conf の編集
green "Editing pacman.conf..."
bash install-script/pacman-conf.sh

# yay のインストール
green "Installing yay-bin..."
bash install-script/yay-bin.sh

# hyprland（最小構成）のインストール
green "Installing Hyprland Minimal..."
bash install-script/hyprland-minimal.sh

# waybar のインストール
green "Installing waybar..."
bash install-script/waybar.sh

# hypridle と hyprlock のインストール
green "Installing hypridle and hyprlock..."
bash install-script/hypridle-hyprlock.sh

# wlogout

# fcitx5 のインストール
green "Installing fcitx5..."
bash install-script/fcitx5-hyprland.sh

# GUI ファイルマネージャーのインストール
green "Installing FileManager(GUI)..."
bash install-script/filemanager-gui.sh

# その他のツールのインストール
green "Installing OtherTool..."
bash install-script/other-tool.sh

# ディスプレイマネージャー（ログインマネージャー）のインストール
green "Installing DisplayManager..."
bash install-script/display-manager.sh

# NvChad（Neovim のディストリビューション）のインストール
green "Installing NvChad..."
bash install-script/neovim-nvchad.sh

# 壁紙ツールのインストール
green "Installing WallPaper Tool..."
bash install-script/wallpaper-tool.sh

# 再起動
green "Install Complete."
green "Type 'reboot' or 'poweroff'"
#reboot

