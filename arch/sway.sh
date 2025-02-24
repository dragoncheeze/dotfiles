#!/bin/bash
sudo pacman -S --needed vim pacman-contrib sway swaylock swayidle swaybg i3status \
    foot rofi seatd playerctl papirus-icon-theme rsync \
    lxappearance pipewire pipewire-pulse wireplumber wl-clipboard man-db fastfetch \
    gtk-engine-murrine mpd mpv xorg-xwayland gvfs xarchiver evince simple-scan lxsession \
    gamemode flatpak polkit cups ipp-usb ghostscript dunst imv libadwaita \
    gnome-themes-extra otf-font-awesome noto-fonts-emoji ttf-croscore ttf-dejavu ttf-droid \
    thunar thunar-archive-plugin thunar-volman tumbler fuse geany galculator \
    gnu-free-fonts ttf-liberation noto-fonts ttf-roboto ttf-ubuntu-font-family \
    nwg-look autotiling materia-gtk-theme nwg-look noto-fonts-emoji fwdup \
    xdg-desktop-portal-gtk xdg-desktop-portal-wlr &&
# Cups
sudo systemctl enable cups &&
sudo systemctl start cups
