#!/bin/bash
echo 'deb http://download.opensuse.org/repositories/home:/strycore/Debian_Testing/ /' | sudo tee /etc/apt/sources.list.d/home:strycore.list &&
curl -fsSL https://download.opensuse.org/repositories/home:strycore/Debian_Testing/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_strycore.gpg > /dev/null &&
sudo apt update &&
sudo apt install lutris -yy