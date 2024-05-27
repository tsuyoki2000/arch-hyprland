#!/bin/bash

#########################
# fcitx5 のインストール #
#########################

# パッケージのインストール
# fcitx5-im（fcitx5 パッケージ一式）
# fcitx5-mozc（fcitx5 用の mozc）
sudo pacman -Sy fcitx5-im fcitx5-mozc --needed --noconfirm

# 自動起動を hyprland.conf に追加
echo "exec-once = fcitx5" >> $HOME/.config/hypr/hyprland.conf

# 再ログイン
echo "Re:Login"



# お決まりの呪文（↓）は Hyprland に必要ない
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS=@im=fcitx

# インライン入力ができない時は…
# 1. fcitx5 の設定を開き「アドオン」タブを選択
# 2. 「X Input Method フロントエンド」の設定ボタン
# 3. 「XIM で On The Spot スタイルを使う（再起動が必要）」にチェックを入れ、OKボタン
# 4. fcitx の設定画面で「閉じる」ボタン
# 5. fcitx を再起動
