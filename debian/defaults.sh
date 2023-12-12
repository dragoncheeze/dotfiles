#!/bin/sh
## Default programs
sudo apt install xserver-xorg xorg lxpolkit rsync gtk2-engines-murrine fonts-ubuntu fonts-dejavu fonts-font-awesome fonts-liberation2 fonts-noto fonts-roboto libxkbcommon-dev picom lxappearance conky pavucontrol pulsemixer materia-gtk-theme arc-theme gnome-themes-extra papirus-icon-theme pcmanfm xarchiver rofi libxft-dev libx11-dev libxinerama-dev galculator geany dunst libnotify-bin suckless-tools build-essential curl wget sxiv scrot feh neofetch htop mpv arc-theme synaptic gamemode polybar bspwm i3 i3status playerctl cups pipewire light -y &&

## Flatpak
sudo apt install flatpak -y &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&
flatpak --user override --filesystem=/home/$USER/.icons/:ro &&
flatpak --user override --filesystem=/usr/share/icons/:ro &&
sudo flatpak override --env=GTK_THEME=Arc-Dark
