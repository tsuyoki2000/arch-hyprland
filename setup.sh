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

# pacman-conf の編集
green "Editing pacman.conf..."
bash .install/pacman-conf.sh

# hyprland（最小構成）のインストール
green "Installing Hyprland Minimal..."
bash .install/hyprland-minimal.sh

# yay のインストール
green "Installing yay-bin..."
bash .install/yay-bin.sh

# fcitx5 のインストール
green "Installing fcitx5..."
bash .install/fcitx5-system.sh

# GUI ファイルマネージャーのインストール
green "Installing FileManager(GUI)..."
bash .install/filemanager-gui.sh

# その他のツールのインストール
green "Installing OtherTool..."
bash .install/other-tool.sh

# waybar のインストール
green "Installing waybar..."
bash .install/waybar.sh

# ディスプレイマネージャー（ログインマネージャー）のインストール
green "Installing DisplayManager..."
bash .install/display-manager.sh

# NvChad（Neovim のディストリビューション）のインストール
green "Installing NvChad..."
bash .install/neovim-nvchad.sh

# hypridle と hyprlock のインストール
green "Installing hypridle and hyprlock..."
bash .install/hypridle-hyprlock.sh
cp dotfiles/hypr/hypridle.conf $HOME/.config/hypr/


# 再起動
green "Install Complete."
green "Type 'reboot' or 'poweroff'"
#reboot

