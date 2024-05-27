#!/bin/bash

################################################
# yay をインストールするためのシェルスクリプト #
################################################
cd
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si --noconfirm
cd
rm -rf yay
