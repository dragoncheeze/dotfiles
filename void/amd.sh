#!/bin/bash
sudo xbps-install linux-firmware-amd &&
sudo xbps-reconfigure --force linux5.15
