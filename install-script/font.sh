#!/bin/bash

####################################################
# フォントをインストールするためのシェルスクリプト #
####################################################

# パッケージのインストール
echo "Installing ttf-hackgen..."
yay -S ttf-hackgen --needed --noconfirm

# foot.ini の編集
sed -i "s/font=monospace:/font=HackGen Console NF:/g" $HOME/.config/foot/foot.ini

# HackGenフォントに入れ替えたので、ttf-dejavu-nerd と otf-ipafont を削除
sudo pacman -Rs ttf-dejavu-nerd otf-ipafont --noconfirm

