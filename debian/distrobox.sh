#!/bin/bash
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh &&
distrobox create -i docker.io/library/archlinux:latest
