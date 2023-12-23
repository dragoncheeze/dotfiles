#!/bin/bash
yay -S --needed sway swaylock swayidle swaybg brave-bin autotiling i3status \
    foot rofi seatd light playerctl arc-gtk-theme papirus-icon-theme firefox \
    lxappearance pipewire pipewire-pulse wireplumber wl-clipboard man-db neofetch \
    gtk-engine-murrine mpd mpv xorg-xwayland pcmanfm gvfs file-roller lxsession \
    gamemode flatpak polkit cups ipp-usb ghostscript dunst imv libadwaita \
    gnome-themes-extra otf-font-awesome ttf-croscore ttf-dejavu ttf-droid \
    gnu-free-fonts ttf-liberation noto-fonts ttf-roboto ttf-ubuntu-font-family &&
# Cups
sudo systemctl enable cups &&
sudo systemctl start cups
