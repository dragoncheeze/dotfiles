#!/bin/bash
flatpak override --user --filesystem=~/.icons:ro &&
flatpak override --user --env=XCURSOR_PATH=~/.icons
