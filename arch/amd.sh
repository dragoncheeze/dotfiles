#!/bin/bash
sudo pacman -S amd-ucode &&
sudo grub-mkconfig -o /boot/grub/grub.cfg
