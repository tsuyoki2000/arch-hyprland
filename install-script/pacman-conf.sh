#!/bin/bash

######################
# pacman-conf の編集 #
######################

# カラー出力とプログレスバーをパックマンにする
# 具体的には「#Color」のコメントを外し、下の行に「ILoveCandy」を追加する
sudo sh -c "sed -i 's/#Color/Color\'$'\nILoveCandy/g' /etc/pacman.conf"

# 同時ダウンロードを有効にする
sudo sh -c "sed -i 's/#ParallelDownloads/ParallelDownloads/g' /etc/pacman.conf"

echo "done."
