#!/bin/sh
# Default programs
yay -S rsync man pacman-contrib reflector xclip xorg-xinit cups ipp-usb ghostscript python-psutil fuse dunst wine-staging alacritty brave-bin yt-dlp dmenu gtk-engine-murrine materia-gtk-theme ttf-ubuntu-font-family lib32-gnutls lib32-libldap lib32-libgpg-error lib32-sqlite lib32-libpulse lib32-alsa-plugins picom lxappearance conky pavucontrol pulsemixer pcmanfm gvfs xarchiver rofi galculator geany lxsession curl wget cargo sxiv scrot nitrogen alsa-utils neofetch htop powerline mpv gamemode polybar bspwm sxhkd xfce4-power-manager playerctl -yy &&
# Nvidia
#sudo pacman -S --needed nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader &&
# sudo pacman -S nvidia-prime &&
# Trim
sudo systemctl enable --now fstrim.timer
