#!/bin/bash

# Prerequisites 
# echo 'This script requires "icontool" and "symlinks" package.'
# echo 'Installing... '
# echo 'Requires root privileges:'
# sudo yum install -y icon-naming-utils symlinks
# echo 'Done. '

#Enter main directory
cd $HOME/checkout/moka-icon-theme/Moka

DIRECTORIES=('16x16' '22x22' '24x24' '32x32' '48x48' '64x64' '96x96' '256x256')

# Generate symlinks
echo 'Generating symlinks...'
for directory in "${DIRECTORIES[@]}"
do
	cd $directory
	icon-name-mapping -c actions
	icon-name-mapping -c apps
	icon-name-mapping -c categories
	icon-name-mapping -c devices
	icon-name-mapping -c mimetypes
	icon-name-mapping -c places
	icon-name-mapping -c status
	cd ..
done
echo 'Done.'


# Manually generate symlinks missed by icontool

cd $HOME/checkout/moka-icon-theme/Moka/

echo 'Will now generate symlinks missed by "icontool".'

DIRECTORIES=('16x16/apps' '22x22/apps' '24x24/apps' '32x32/apps' '48x48/apps' '64x64/apps' '96x96/apps' '256x256/apps')

echo 'Generating symlinks for apps...'
for directory in "${DIRECTORIES[@]}"
do
	cd $directory	
 	ln -sf preferences-system-power.png gnome-power-manager.png
 	ln -sf preferences-system-power.png preferences-system-power-management.png
 	ln -sf xchat.png xchat-gnome.png
 	ln -sf xchat.png hexchat.png
 	cd ..
 	cd ..
 done
# Clear potential link errors
symlinks -cdr $HOME/checkout/moka-icon-theme/Moka

#END