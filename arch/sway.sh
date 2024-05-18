#!/bin/bash
sudo pacman -S --needed sway swaylock swayidle swaybg firefox i3status \
    foot rofi seatd playerctl arc-gtk-theme papirus-icon-theme rsync \
    lxappearance pipewire pipewire-pulse wireplumber wl-clipboard man-db fastfetch \
    gtk-engine-murrine mpd mpv xorg-xwayland gvfs file-roller lxsession \
    gamemode flatpak polkit cups ipp-usb ghostscript dunst imv libadwaita \
    gnome-themes-extra otf-font-awesome ttf-croscore ttf-dejavu ttf-droid \
    thunar thunar-archive-plugin thunar-volman tumbler fuse geany galculator \
    gnu-free-fonts ttf-liberation noto-fonts ttf-roboto ttf-ubuntu-font-family &&
# Cups
sudo systemctl enable cups &&
sudo systemctl start cups
