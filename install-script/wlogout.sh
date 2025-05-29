#!/bin/bash

####################################################
# wlogout をインストールするためのシェルスクリプト #
####################################################

# パッケージのインストール
mkdir -p $HOME/.config/wlogout
yay -Sy wlogout --needed --noconfirm

# 設定ファイルをコピー
curl https://raw.githubusercontent.com/ArtsyMacaw/wlogout/refs/heads/master/layout -o $HOME/.config/wlogout/layout
curl https://raw.githubusercontent.com/ArtsyMacaw/wlogout/refs/heads/master/style.css -o $HOME/.config/wlogout/style.css
