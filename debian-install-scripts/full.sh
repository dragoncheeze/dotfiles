#!/bin/sh
# Default programs
sudo apt install fish xserver-xorg xorg fonts-ubuntu picom lxappearance pcmanfm xarchiver rofi libxft-dev libx11-dev libxinerama-dev geany qutebrowser suckless-tools build-essential curl wget cargo sxiv maim nitrogen alsa-utils volumeicon-alsa neofetch htop &&

# Brave Browser
sudo apt install apt-transport-https curl gnupg -yy

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -yy &&

# Wine

# fix permissions for scripting
sudo chown $USER /etc/apt/sources.list.d/

# add 32 bit architecture
sudo dpkg --add-architecture i386

# update
sudo apt update -yy

# import wine gpg key
sudo wget -nc https://dl.winehq.org/wine-builds/winehq.key

# add wine gpg key
sudo apt-key add winehq.key

# add wine repository
sudo touch /etc/apt/sources.list.d/wine.list
sudo echo "deb https://dl.winehq.org/wine-builds/debian bullseye main" > /etc/apt/sources.list.d/wine.list

# update
sudo apt update

# install wine staging
sudo apt install --install-recommends winehq-staging -yy

# return permissions to root
sudo chown root:root /etc/apt/sources.list.d/

# Xanmod Kernel
# Add repository
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list

# GPG key
wget -qO - https://dl.xanmod.org/gpg.key | sudo apt-key --keyring /etc/apt/trusted.gpg.d/xanmod-kernel.gpg add -

# Install kernel
sudo apt update && sudo apt install linux-xanmod preload gamemode

