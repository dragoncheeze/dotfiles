#!/bin/bash
sudo apt update &&
sudo apt install gnupg2 wget ca-certificates lsb-release software-properties-common &&
wget -nc https://dl.winehq.org/wine-builds/winehq.key &&
cat winehq.key | gpg --dearmor  > winehq.gpg &&
sudo install -o root -g root -m 644 winehq.gpg /etc/apt/trusted.gpg.d/
