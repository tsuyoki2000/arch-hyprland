#!/bin/bash

########################################################
# Fcitx5-mozc をインストールするためのシェルスクリプト #
########################################################
#ETC_ENV="/etc/environment"

# パッケージのインストール
# fcitx5-im（fcitx5 パッケージ一式）
# fcitx5-mozc（fcitx5 用の mozc）
sudo pacman -Sy fcitx5-im fcitx5-mozc --needed --noconfirm

# /etc/environment にお決まりの呪文を追加
# 「=fcitx5」と書かなくても「=fcitx」で動作する
#sudo sh -c "echo GTK_IM_MODULE=fcitx >> $ETC_ENV"
#sudo sh -c "echo QT_IM_MODULE=fcitx >> $ETC_ENV"
#sudo sh -c "echo XMODIFIERS=@im=fcitx >> $ETC_ENV"

# 自動起動を hyprland.conf に追加
echo "exec-once = fcitx5" >> $HOME/.config/hypr/hyprland.conf

# # インライン入力に対応するために、~/.config/fcitx5/conf/xim.conf を追加
# mkdir -p $HOME/.config/fcitx5/conf
# echo "# XIM で On The Spot スタイルを使う（再起動が必要）
# UseOnTheSpot=True
# " >> $HOME/.config/fcitx5/conf/xim.conf

# /etc/environment を編集しているので、設定を有効にするために再起動が必要
# （/etc/environment は OS起動時に読み込まれる）
echo "Type reboot"
#reboot
