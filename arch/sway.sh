#!/bin/bash
sudo pacman -S --needed vim pacman-contrib sway swaylock swayidle swaybg i3status \
    foot rofi seatd playerctl papirus-icon-theme rsync uwsm fastfetch \
    lxappearance pipewire pipewire-pulse wireplumber wl-clipboard man-db \
    gtk-engine-murrine mpd mpv xorg-xwayland gvfs xarchiver evince simple-scan \
    gamemode flatpak polkit cups ipp-usb ghostscript dunst imv libadwaita \
    gnome-themes-extra otf-font-awesome noto-fonts-emoji ttf-croscore ttf-dejavu ttf-droid \
    thunar thunar-archive-plugin thunar-volman tumbler fuse geany galculator \
    gnu-free-fonts ttf-liberation noto-fonts ttf-roboto ttf-ubuntu-font-family \
    nwg-look autotiling materia-gtk-theme nwg-look noto-fonts-emoji fwupd \
    xdg-desktop-portal-gtk xdg-desktop-portal-wlr lxsession &&
# Cups
sudo systemctl enable cups &&
sudo systemctl start cups
