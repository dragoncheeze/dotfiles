#!/bin/sh
curl 'https://liquorix.net/add-liquorix-repo.sh' | sudo bash &&
sudo apt install linux-image-liquorix-amd64 linux-headers-liquorix-amd64
