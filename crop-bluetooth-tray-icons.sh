#!/bin/bash

# Check for imagemagick
echo 'This script requires the Imagemagick.'
echo 'Checking if installed...'
if [ -e /usr/bin/mogrify ]; then
    echo 'Imagemagick is installed, proceeding... '
else
    echo 'Imagemagick is not installed.'
    echo 'Installing... '
    echo 'Requires root privileges:'
    sudo apt-get install -y imagemagick
    echo 'Done. '
fi

# Crop 22x22 Bluetooth Panel Icons
echo 'Cropping 22x22 bluetooth panel icons...'
cd Moka/22x22/status/
convert bluetooth-active.png -set colorspace RGB -crop 11x22+6+0 bluetooth-active.png
convert blueman-tray.png -set colorspace RGB -crop 11x22+6+0 blueman-tray.png
convert bluetooth-disabled.png -set colorspace RGB -crop 12x22+6+0 bluetooth-disabled.png
convert bluetooth-paired.png -set colorspace RGB -crop 13x22+6+0 bluetooth-paired.png
cd ..
cd ..
cd ..
echo 'Done. '

# Crop 24x24 Bluetooth Panel Icon
echo 'Cropping 24x24 bluetooth panel icons...'
cd Moka/24x24/status/
convert bluetooth-active.png -set colorspace RGB -crop 11x24+7+0 bluetooth-active.png
convert blueman-tray.png -set colorspace RGB -crop 11x24+7+0 blueman-tray.png
convert bluetooth-disabled.png -set colorspace RGB -crop 12x24+7+0 bluetooth-disabled.png
convert bluetooth-paired.png -set colorspace RGB -crop 13x24+7+0 bluetooth-paired.png
cd ..
cd .. 
cd ..
echo 'Done. '
