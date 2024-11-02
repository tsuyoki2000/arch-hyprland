#!/bin/bash

###########################################################################
# yazi（CLIファイルマネージャー）をインストールするためのシェルスクリプト #
###########################################################################

# パッケージのインストール
sudo pacman -Sy yazi --needed --noconfirm

# 設定ファイルのコピー
# yazi は設定ファイルを持たないので、デフォルトの設定を
# コンフィグファイルに書き起こしたものをネットからダウンロードする
mkdir -p $HOME/.config/yazi
curl https://raw.githubusercontent.com/sxyazi/yazi/main/yazi-config/preset/yazi.toml -o $HOME/.config/yazi/yazi.toml
curl https://raw.githubusercontent.com/sxyazi/yazi/main/yazi-config/preset/keymap.toml -o $HOME/.config/yazi/keymap.toml
curl https://raw.githubusercontent.com/sxyazi/yazi/main/yazi-config/preset/theme.toml -o $HOME/.config/yazi/theme.toml

# yazi インストール時に提案されるその他のパッケージ
# - jq：JSONプレビュー
# - ffmpegthumbnailer：ビデオサムネイル
# - poppler：PDFプレビュー
# - unarchiver：アーカイブプレビュー
# - fd：ファイル検索？
# - ripgrep：ファイル内容検索
# - fzf：ディレクトリジャンプ
# - zoxide：ディレクトリジャンプ


# 画像プレビューについて
# デフォルトでプレビュー機能があるようだ

# その他 yazi とは関係ないが、以下のようなものもある。
# - ueberzugpp
# - imgcat
#   - yay -S imgcat
#   - go製
#   - コンパイルも比較的早い
#   - インストールするだけで、画像が表示された
#   - 画像があるフォルダに移動した際、少し固まるが基本的に高速で表示される
#   - ターミナルに表示する事も可能だが、ドット絵みたいになる。


###########################################################################
# ranger（CLIファイルマネージャー）をインストールするためのシェルスクリプト #
###########################################################################

# パッケージのインストール
#sudo pacman -Sy ranger highlight sxiv --needed --noconfirm

# ranger設定ファイルの作成
#ranger --copy-config all

# ~/.config/ranger/rc.conf の編集
# 枠線の表示
#sed -i "s/set draw_borders none/set draw_borders both/g" $HOME/.config/ranger/rc.conf
# 画像表示を「true」にする
#sed -i "s/set preview_images false/set preview_images true/g" $HOME/.config/ranger/rc.conf
# 画像の表示方法に「ueberzug」を指定
#sed -i "s/set preview_images_method w3m/set preview_images_method ueberzug/g" $HOME/.config/ranger/rc.conf
