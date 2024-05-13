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
curl https://raw.githubusercontent.com/sxyazi/yazi/main/yazi-config/preset/keymap.toml -O $HOME/.config/yazi/
# https://github.com/sxyazi/yazi/tree/main/yazi-config/preset/theme.toml
# https://github.com/sxyazi/yazi/tree/main/yazi-config/preset/yazi.toml

# 画像プレビュー
# - imgcat
#   - yay -S imgcat
#   - go製
#   - コンパイルも比較的早い
#   - インストールするだけで、画像が表示された
#   - 画像があるフォルダに移動した際、少し固まるが基本的に高速で表示される
#   - ターミナルに表示する事も可能だが、ドット絵みたいになる。
#
# - ueberzugpp


# yazi インストール時に提案されるその他のパッケージ
# - jq：JSONプレビュー
# - ffmpegthumbnailer：ビデオサムネイル
# - poppler：PDFプレビュー
# - unarchiver：アーカイブプレビュー
# - fd：ファイル検索？
# - ripgrep：ファイル内容検索
# - fzf：ディレクトリジャンプ
# - zoxide：ディレクトリジャンプ
