#!/bin/bash

## Install Sway Stuff
sudo apt install sway swaybg swaylock swayidle python3-i3ipc seatd dunst light playerctl pulseaudio pipewire pipewire-pulse wireplumber pavucontrol pulsemixer wl-clipboard neofetch gtk2-engines-murrine mpv mpd foot waybar papirus-icon-theme arc-theme wofi fonts-dejavu fonts-font-awesome fonts-liberation2 fonts-noto fonts-roboto lxpolkit libglib2.0-bin xwayland thunar thunar-archive-plugin file-roller thunar-media-tags-plugin thunar-volman tumbler cups galculator build-essential gamemode imv -y &&
## Nvidia
# sudo apt install nvidia-driver -y &&
## Flatpak Stuff
sudo apt install flatpak -y &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&
flatpak --user override --filesystem=/home/$USER/.icons/:ro &&
flatpak --user override --filesystem=/usr/share/icons/:ro
