#!/bin/sh
## Default programs
sudo apt install xserver-xorg xorg lxpolkit rsync gtk2-engines-murrine \
    fonts-ubuntu fonts-dejavu fonts-font-awesome fonts-liberation2 \
    fonts-recommended fonts-noto fonts-roboto libxkbcommon-dev lxappearance \
    pavucontrol pulsemixer materia-gtk-theme arc-theme gnome-themes-extra \
    papirus-icon-theme pcmanfm xarchiver rofi libxft-dev libx11-dev libxinerama-dev \
    galculator geany dunst libnotify-bin suckless-tools build-essential curl \
    wget sxiv scrot feh htop mpv synaptic gamemode wine picom fwupd \
    i3status python3-i3ipc playerctl cups pipewire-audio libncurses-dev -y &&
sudo dpkg --add-architecture i386 && sudo apt update && 
sudo apt install -y wine64 wine32 libasound2-plugins:i386 libsdl2-2.0-0:i386 \ 
    libdbus-1-3:i386 libsqlite3-0:i386

