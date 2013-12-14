#!/bin/bash
# 
# "Moka" icon development quick render & install script
#
# This script is to run all the scripts for rendering icons quickly & sets moka as the icon theme. DO NOT USE, unless you know what you are doing.
#
# The various scripts and actions require python, inkscape, imagemagick & rsync to be installed.

echo "Moka development quick render & install script."

# Render PNGs from the source SVGs
echo "Rendering PNGs..."
./render-pngs.py
echo "Done."

# Generate symlinks
echo "Generating symbolic links..."
./generate-symlinks.sh
echo "Done."

# Synchronize newly rendered icon set with locally installed version (or install if none).
echo "Synchronize changes with local icon theme directory..."
rsync -av --exclude='.icon-theme.cache' Moka/ $HOME/.local/share/icons/Moka
echo "Done."

# Reset icon theme via GSettings
echo "Resetting desktop icon set..."
gsettings reset org.gnome.desktop.interface icon-theme
echo "Done."

# Set icon theme to Moka via GSettings
echo "Setting Moka icon as desktop icon set..."
gsettings set org.gnome.desktop.interface icon-theme "Moka"
echo "Done."