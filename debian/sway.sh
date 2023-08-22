#!/bin/bash

## Install Sway Stuff
sudo apt install sway swaybg swaylock swayidle seatd light playerctl pulseaudio pipewire pipewire-pulse wireplumber pavucontrol pulsemixer wl-clipboard neofetch gtk2-engines-murrine mpv mpd foot waybar papirus-icon-theme arc-theme wofi fonts-dejavu fonts-font-awesome fonts-liberation2 fonts-noto fonts-roboto lxpolkit libglib2.0-bin xwayland thunar thunar-archive-plugin file-roller thunar-media-tags-plugin thunar-volman tumbler cups galculator build-essential gamemode firefox-esr imv -y &&
## Nvidia
# sudo apt install nvidia-driver -y &&
## Flatpak Stuff
sudo apt install flatpak -y &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&
flatpak --user override --filesystem=/home/$USER/.icons/:ro &&
flatpak --user override --filesystem=/usr/share/icons/:ro &&
sudo flatpak override --env=GTK_THEME=Arc-Dark &&
## Brave
sudo apt install curl -y &&
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg &&
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list &&
sudo apt update &&
sudo apt install brave-browser -y &&
## Theme
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark' &&
gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Dark'
