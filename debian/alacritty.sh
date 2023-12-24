#!/bin/bash
sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3 -yy &&
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh &&
source $HOME/.cargo/env &&
rustup override set stable &&
rustup update stable &&
git clone https://github.com/alacritty/alacritty.git ~/builds/alacritty &&
cd ~/builds/alacritty/ &&
cargo build --release &&
sudo cp target/release/alacritty /usr/local/bin &&
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg &&
sudo desktop-file-install extra/linux/Alacritty.desktop &&
sudo update-desktop-database
