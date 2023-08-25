#! /bin/bash

######################################################
# Hyprland をセットアップするためのシェルスクリプト #
######################################################

# /etc/environment の編集（個人設定するファイルが分からん。.profile？）
ETC_ENV="/etc/environment"
sudo sh -c "echo EDITOR=nvim >> $ETC_ENV"
sudo sh -c "echo WLR_NO_HARDWARE_CURSORS=1 >> $ETC_ENV"
sudo sh -c "echo WLR_RENDERER_ALLOW_SOFTWARE=1 >> $ETC_ENV"

# 基本パッケージのインストール
sudo pacman -Sy hyprland foot wofi otf-ipafont --needed --noconfirm

# Hyprland の設定ファイルをコピー
mkdir -p $HOME/.config/hypr/
cp config/hypr/hyprland.conf $HOME/.config/hypr/

# foot の設定ファイルをコピー
mkdir -p $HOME/.config/foot/
cp config/foot/foot.ini $HOME/.config/foot/

# その他のパッケージインストール
sudo pacman -Sy neovim hyprpaper firefox-i18n-ja thunar --needed --noconfirm

########################################
# fcitx5 インストール
########################################


########################################
# ranger インストール
########################################
sudo pacman -Sy ranger highlight sxiv --needed --noconfirm
# ranger設定ファイルの作成
ranger --copy-config all

# ~/.config/ranger/rc.conf の編集
# 枠線の表示
sed -i "s/set draw_borders none/set draw_borders both/g" $HOME/.config/ranger/rc.conf
# 画像表示を「true」にする
sed -i "s/set preview_images false/set preview_images true/g" $HOME/.config/ranger/rc.conf
# 画像の表示方法に「ueberzug」を指定
#sed -i "s/set preview_images_method w3m/set preview_images_method ueberzug/g" $HOME/.config/ranger/rc.conf

# 再起動
reboot
