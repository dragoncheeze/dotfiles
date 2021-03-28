#!/bin/sh

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

# install wine tricks
sudo apt install winetricks -yy

#install lutris
sudo apt install --install-recommends lutris

# return permissions to root
sudo chown root:root /etc/apt/sources.list.d/
