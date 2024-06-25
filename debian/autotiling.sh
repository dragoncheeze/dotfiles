#!/bin/bash
git clone https://github.com/nwg-piotr/autotiling ~/builds/autotiling &&
    chmod +x ~/builds/autotiling/autotiling/main.py &&
    cp ~/builds/autotiling/autotiling/main.py ~/bin/autotiling
