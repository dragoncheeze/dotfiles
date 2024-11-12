#!/bin/bash
sudo dnf install tar sway wine lutris thunar thunar-volman thunar-archive-plugin tumbler tumbler-extras \
    lxpolkit i3status python3-i3ipc firefox mpv cups avahi galculator gamemode imv \
    clipman playerctl papirus-icon-theme papirus-icon-theme-dark rofi dunst fastfetch \
    fuse geany evince simple-scan usbutils @multimedia @sound-and-video lxappearance \
    fuse-libs file-roller gnome-themes-extra flatpak fish neovim htop  \
    google-noto-emoji-fonts system-config-printer wget gnome-keyring gnome-keyring-pam &&
# Autotiling
git clone https://github.com/nwg-piotr/autotiling ~/builds/autotiling &&
    chmod +x ~/builds/autotiling/autotiling/main.py &&
    cp ~/builds/autotiling/autotiling/main.py ~/bin/autotiling &&
# Flatpak Repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
