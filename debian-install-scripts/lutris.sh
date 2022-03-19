#!/bin/bash
echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_11/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list &&
wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_11/Release.key -O- | sudo apt-key add - &&
sudo apt update && sudo apt install lutris
