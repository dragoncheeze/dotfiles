#!/bin/bash
sudo pacman -S --needed sway swaylock swayidle swaybg foot waybar wofi seatd light playerctl arc-gtk-theme papirus-icon-theme firefox lxappearance pipewire pipewire-pulse wireplumber pulseaudio pavucontrol pulsemixer wl-clipboard man-db neofetch gtk-engine-murrine mpd mpv xorg-xwayland thunar thunar-archive-plugin thunar-media-tags-plugin gvfs thunar-volman tumbler file-roller lxsession gamemode flatpak polkit cups ipp-usb ghostscript dunst imv libadwaita &&
# Fonts
sudo pacman -S --needed otf-font-awesome ttf-croscore ttf-dejavu ttf-droid gnu-free-fonts ttf-liberation noto-fonts ttf-roboto ttf-ubuntu-font-family &&
# Trim
sudo systemctl enable --now fstrim.timer &&
# Cups
sudo systemctl enable cups &&
sudo systemctl start cups &&
# Theme
gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark' &&
gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Dark'