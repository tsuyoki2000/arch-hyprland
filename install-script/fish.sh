#!/bin/bash

#################################################
# fish をインストールするためのシェルスクリプト #
#################################################

# パッケージのインストール
sudo pacman -Sy fish --needed --noconfirm

# シェルの変更
sudo chsh -s /bin/fish $USER

# 通常は手動（以下の手順）で変更するのだが、
# パスワードを入力せずに変更するために、上記のやり方にした
#
# $ chsh
# $ パスワード入力
# $ /bin/fish

# 設定ファイルの作成
FISH_CONF=$HOME/.config/fish/config.fish
mkdir -p $(dirname $FISH_CONF)
echo "set fish_greeting" >> $FISH_CONF

