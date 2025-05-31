#!/bin/bash

####################################################
# wlogout をインストールするためのシェルスクリプト #
####################################################

# パッケージのインストール
yay -Sy wlogout --needed --noconfirm

# 設定ファイルをコピー
mkdir -p $HOME/.config/wlogout
cp /etc/wlogout/* $HOME/.config/wlogout/
