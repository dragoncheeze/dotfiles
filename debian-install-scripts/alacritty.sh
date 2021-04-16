#!/bin/sh
cd ~/builds/
git clone https://github.com/alacritty/alacritty.git
cd alacritty/
cargo build --release
