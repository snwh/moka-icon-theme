#!/bin/bash

echo "Moka development quick render & install script."

echo "Entering working directory..."
cd ~/dev/moka-icon-theme
echo "Done."

echo "Rendering PNGs..."
./render-pngs.py
echo "Done."

echo "Trimming Tray icons..."
./trim-tray-icons.sh
echo "Done."

echo "Rendering symbolic icons..."
./render-symbolic.rb
echo "Done."

echo "Updating Moka icon cache..."
gtk-update-icon-cache /home/sam/dev/moka-icon-theme/Moka/
echo "Done."

echo "Synchronizing new icons with local icon theme..."
rsync -av --exclude='.git' Moka/ /home/sam/.icons/Moka
echo "Done."

echo "Resetting desktop icon set..."
gsettings reset org.gnome.desktop.interface icon-theme
echo "Done."

echo "Setting Moka icon as desktop icon set..."
gsettings set org.gnome.desktop.interface icon-theme "Moka"
echo "Done."