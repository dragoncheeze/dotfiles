#!/bin/sh
## Default programs
sudo apt install xserver-xorg xorg lxpolkit rsync gtk2-engines-murrine fonts-ubuntu fonts-dejavu fonts-font-awesome fonts-liberation2 fonts-noto fonts-roboto libxkbcommon-dev picom lxappearance conky pavucontrol pulsemixer materia-gtk-theme arc-theme gnome-themes-extra papirus-icon-theme pcmanfm xarchiver rofi libxft-dev libx11-dev libxinerama-dev galculator geany dunst libnotify-bin suckless-tools build-essential curl wget sxiv scrot nitrogen neofetch htop mpv arc-theme synaptic gamemode polybar bspwm i3 i3status playerctl cups pipewire light -y &&

## Gaming
sudo dpkg --add-architecture i386 &&
sudo apt update &&
sudo apt install -y wine64 wine32 libasound2-plugins:i386 libsdl2-2.0-0:i386 libdbus-1-3:i386 libsqlite3-0:i386 &&
sudo apt install nvidia-driver -y &&

## Flatpak
sudo apt install flatpak -y &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#flatpak --user override --filesystem=/home/$USER/.icons/:ro &&
#flatpak --user override --filesystem=/usr/share/icons/:ro &&
#sudo flatpak override --env=GTK_THEME=Arc-Dark &&

## Brave
#sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/#brave-browser-archive-keyring.gpg &&
#echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable #main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list &&
#sudo apt update &&
#sudo apt install brave-browser -y
