#!/bin/bash

#################################################
# fish をインストールするためのシェルスクリプト #
#################################################

# パッケージのインストール
sudo pacman -Sy fish --needed --noconfirm

echo "set fish_greeting" >> $HOME/.config/fish/config.fish

# シェルの変更
sudo chsh -s /bin/fish $USER

# 通常は手動（以下の手順）で変更するのだが、
# パスワードを入力せずに変更するために、上記のやり方にした
#
# $ chsh
# $ パスワード入力
# $ /bin/fish
