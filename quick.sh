#!/bin/bash
# 
# "Moka" icon development quick render & install script
#
# This script is to run all the scripts for rendering icons quickly & sets moka as the icon theme. DO NOT USE, unless you know what you are doing.
#
# The various scripts require python, ruby, inkscape, imagemagick & rsync to be installed.

echo "Moka development quick render & install script."

# Enter the scripts directory
echo "Entering working directory..."
cd ~/dev/moka-icon-theme
echo "Done."

# Render PNGs from the source SVGs
echo "Rendering PNGs..."
./render-pngs.py
echo "Done."

# Trim PNGs outlined in 'trim-tray-icons.sh'
echo "Trimming Tray icons..."
./trim-tray-icons.sh
echo "Done."

# Render symbolic icons
echo "Rendering symbolic icons..."
./render-symbolic.rb
echo "Done."

# Update working icon cache
echo "Updating Moka icon cache..."
gtk-update-icon-cache /home/sam/dev/moka-icon-theme/Moka/
echo "Done."

# Synchronize newly rendered icon set with locally installed version (or install if none).
echo "Synchronizing new icons with local icon theme..."
rsync -av --exclude='.git' Moka/ /home/sam/.icons/Moka
echo "Done."

# Reset icon theme via GSettings
echo "Resetting desktop icon set..."
gsettings reset org.gnome.desktop.interface icon-theme
echo "Done."

# Set icon theme to Moka via GSettings
echo "Setting Moka icon as desktop icon set..."
gsettings set org.gnome.desktop.interface icon-theme "Moka"
echo "Done."