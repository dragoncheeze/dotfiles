#!/bin/bash
sudo xbps-install intel-ucode &&
sudo xbps-reconfigure --force linux6.0
