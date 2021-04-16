#!/bin/sh
sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3 -yy &&
cd ~/builds/
git clone https://github.com/alacritty/alacritty.git
cd alacritty/
cargo build --release &&
sudo cp target/release/alacritty ~/bin/
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
