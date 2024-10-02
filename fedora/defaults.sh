#!/bin/bash
sudo dnf install tar sway thunar thunar-volman thunar-archive-plugin tumbler tumbler-extras \
    lxpolkit i3status python3-i3ipc firefox mpv cups avahi galculator gamemode imv \
    clipman playerctl papirus-icon-theme papirus-icon-theme-dark rofi dunst fastfetch \
    fuse geany evince simple-scan usbutils @multimedia @sound-and-video lxappearance \
    gnome-themes-extra flatpak fish neovim htop google-noto-emoji-fonts &&
# Autotiling
git clone https://github.com/nwg-piotr/autotiling ~/builds/autotiling &&
    chmod +x ~/builds/autotiling/autotiling/main.py &&
    cp ~/builds/autotiling/autotiling/main.py ~/bin/autotiling &&
# Flatpak Repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo &&
# Brave
sudo dnf install dnf-plugins-core &&
    sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo &&
    sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc &&
    sudo dnf install brave-browser &&
# RPM Fusion
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm &&
    sudo dnf config-manager --enable fedora-cisco-openh264 &&
    sudo dnf update @core &&
    sudo dnf swap ffmpeg-free ffmpeg --allowerasing &&
    sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin &&
    sudo dnf update @sound-and-video &&
# AMD
    sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld &&
    sudo dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld &&
    sudo dnf swap mesa-va-drivers.i686 mesa-va-drivers-freeworld.i686 &&
    sudo dnf swap mesa-vdpau-drivers.i686 mesa-vdpau-drivers-freeworld.i686 &&
# Firmware
    sudo dnf install rpmfusion-nonfree-release-tainted &&
    sudo dnf --repo=rpmfusion-nonfree-tainted install "*-firmware"
