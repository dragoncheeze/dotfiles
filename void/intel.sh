#!/bin/bash
sudo xbps-install intel-ucode &&
sudo xbps-reconfigure --force linux5.15
