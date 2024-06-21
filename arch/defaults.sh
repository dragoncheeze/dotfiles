#!/bin/sh
# Default programs
sudo pacman -S  --needed rsync man pacman-contrib reflector xclip xorg-xinit cups \
    ghostscript python-psutil fuse dunst wine-staging alacritty ipp-usb \
    dmenu gtk-engine-murrine materia-gtk-theme ttf-ubuntu-font-family \
    lib32-gnutls lib32-libldap lib32-libgpg-error lib32-sqlite lib32-libpulse \
    lib32-alsa-plugins picom lxappearance conky pipewire pulsemixer \
    pcmanfm gvfs xarchiver rofi galculator geany lxsession curl wget sxiv \
    scrot feh alsa-utils fastfetch htop powerline mpv gamemode \
    polybar bspwm sxhkd playerctl -y
