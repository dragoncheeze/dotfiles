#!/bin/bash
sudo apt install flatpak -y &&
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo &&
flatpak --user override --filesystem=/home/$USER/.icons/:ro &&
flatpak --user override --filesystem=/usr/share/icons/:ro &&
sudo flatpak override --filesystem=/usr/share/themes/ &&
sudo flatpak override --env GTK_THEME=Adwaita-dark
