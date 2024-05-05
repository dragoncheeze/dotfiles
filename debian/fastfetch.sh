#!/bin/bash
sudo apt install cmake pkg-config -y &&
git clone https://github.com/fastfetch-cli/fastfetch.git  ~/builds/fastfetch/ &&
cd ~/builds/fastfetch &&
mkdir -p build && cd build &&
cmake .. &&
cmake --build . --target fastfetch --target flashfetch &&
cp fastfetch ~/bin/ &&
clear && echo fastfetch installed.
