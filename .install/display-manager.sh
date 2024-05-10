#!/bin/bash

####################################################################
# ディスプレイマネージャーをセットアップするためのシェルスクリプト #
####################################################################

# sddm
sudo pacman -Sy sddm --needed --noconfirm
sudo systemctl -f enable sddm

# ly
# sudo pacman -Sy ly --needed --noconfirm
# sudo systemctl -f enable ly

# gdm
# sudo pacman -Sy gdm --needed --noconfirm
# sudo systemctl -f enable gdm
