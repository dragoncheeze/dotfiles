#!/bin/bash
sudo dpkg --add-architecture i386 &&
wget -nc https://dl.winehq.org/wine-builds/winehq.key &&
sudo apt-key add winehq.key &&
echo 'deb https://dl.winehq.org/wine-builds/debian/ bookworm main' | sudo tee /etc/apt/sources.list.d/wine.list &&
sudo apt update &&
sudo apt install --install-recommends winehq-staging
