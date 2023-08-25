# /etc/environment no hennsyuu
ETC_ENV="/etc/environment"
sudo sh -c "echo EDITOR=nvim >> $ETC_ENV"
sudo sh -c "echo WLR_NO_HARDWARE_CURSORS=1 >> $ETC_ENV"
sudo sh -c "echo WLR_RENDERER_ALLOW_SOFTWARE=1 >> $ETC_ENV"

# Base
sudo pacman -Sy hyprland foot otf-ipafont wofi firefox-i18n-ja --needed --noconfirm

# Config
cp config/hypr/hyprland.conf $HOME/.config/hypr/
