#!/bin/bash

#####################################################
# starship をインストールするためのシェルスクリプト #
# starship はプロンプトデザインを変更するソフト
#####################################################

# パッケージのインストール
sudo pacman -Sy starship --needed --noconfirm

# shell が fish の場合
echo "starship init fish | source" >> $HOME/.config/fish/config.fish

# shell が bash の場合
#echo 'eval "$(starship init bash)"' >> $HOME/.config/fish/config.fish

