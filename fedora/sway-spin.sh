#!/bin/bash
sudo dnf install fastfetch fuse-libs distrobox wine lutris evince  \
google-roboto-fonts simple-scan geany galculator git fish neovim && \
# Autotiling
mkdir ~/.local/bin &&
git clone https://github.com/nwg-piotr/autotiling ~/Documents/autotiling &&
    chmod +x ~/Documents/autotiling/autotiling/main.py &&
    cp ~/Documents/autotiling/autotiling/main.py ~/.local/bin/autotiling &&
# Papirus-Folders
wget -qO- https://git.io/papirus-folders-install | sh
