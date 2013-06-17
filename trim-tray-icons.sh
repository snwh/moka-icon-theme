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

# Crop 22x22 Dropbox Panel Icons
echo 'Cropping 22x22 Dropbox panel icons...'
cd Moka/22x22/status/
convert dropboxstatus-x.png -set colorspace RGB -crop 16x22+3+0 dropboxstatus-x.png
convert dropboxstatus-logo.png -set colorspace RGB -crop 16x22+3+0 dropboxstatus-logo.png
convert dropboxstatus-idle.png -set colorspace RGB -crop 16x22+3+0 dropboxstatus-idle.png
convert dropboxstatus-busy.png -set colorspace RGB -crop 16x22+3+0 dropboxstatus-busy.png
convert dropboxstatus-busy2.png -set colorspace RGB -crop 16x22+3+0 dropboxstatus-busy2.png
cd ..
cd ..
cd ..
echo 'Done. '

# Crop 24x24 Dropbox Panel Icon
echo 'Cropping 24x24 Dropbox panel icons...'
cd Moka/24x24/status/
convert dropboxstatus-x.png -set colorspace RGB -crop 16x24+4+0 dropboxstatus-x.png
convert dropboxstatus-logo.png -set colorspace RGB -crop 16x24+4+0 dropboxstatus-logo.png
convert dropboxstatus-idle.png -set colorspace RGB -crop 16x24+4+0 dropboxstatus-idle.png
convert dropboxstatus-busy.png -set colorspace RGB -crop 16x24+4+0 dropboxstatus-busy.png
convert dropboxstatus-busy2.png -set colorspace RGB -crop 16x24+4+0 dropboxstatus-busy2.png
cd ..
cd .. 
cd ..
echo 'Done. '

# Crop 22x22 Battery Panel Icons
echo 'Cropping 22x22 Battery panel icons...'
cd Moka/22x22/status/
convert battery-low.png -set colorspace RGB -crop 14x22+4+0 battery-low.png
convert battery-full.png -set colorspace RGB -crop 14x22+4+0 battery-full.png
convert battery-good.png -set colorspace RGB -crop 14x22+4+0 battery-good.png
convert battery-empty.png -set colorspace RGB -crop 14x22+4+0 battery-empty.png
convert battery-medium.png -set colorspace RGB -crop 14x22+4+0 battery-medium.png
convert battery-caution.png -set colorspace RGB -crop 14x22+4+0 battery-caution.png
convert battery-missing.png -set colorspace RGB -crop 14x22+4+0 battery-missing.png
convert battery-full-charged.png -set colorspace RGB -crop 16x22+3+0 battery-full-charged.png
convert battery-low-charging.png -set colorspace RGB -crop 16x22+3+0 battery-low-charging.png
convert battery-full-charging.png -set colorspace RGB -crop 16x22+3+0 battery-full-charging.png
convert battery-good-charging.png -set colorspace RGB -crop 16x22+3+0 battery-good-charging.png
convert battery-empty-charging.png -set colorspace RGB -crop 16x22+3+0 battery-empty-charging.png
convert battery-medium-charging.png -set colorspace RGB -crop 16x22+3+0 battery-medium-charging.png
convert battery-caution-charging.png -set colorspace RGB -crop 16x22+3+0 battery-caution-charging.png
cd ..
cd ..
cd ..
echo 'Done. '

# Crop 24x24 Battery Panel Icons
echo 'Cropping 24x24 Battery panel icons...'
cd Moka/24x24/status/
convert battery-low.png -set colorspace RGB -crop 12x24+6+0 battery-low.png
convert battery-full.png -set colorspace RGB -crop 12x24+6+0 battery-full.png
convert battery-good.png -set colorspace RGB -crop 12x24+6+0 battery-good.png
convert battery-empty.png -set colorspace RGB -crop 12x24+6+0 battery-empty.png
convert battery-medium.png -set colorspace RGB -crop 12x24+6+0 battery-medium.png
convert battery-caution.png -set colorspace RGB -crop 12x24+6+0 battery-caution.png
convert battery-missing.png -set colorspace RGB -crop 12x24+6+0 battery-missing.png
convert battery-full-charged.png -set colorspace RGB -crop 14x24+5+0 battery-full-charged.png
convert battery-low-charging.png -set colorspace RGB -crop 14x24+5+0 battery-low-charging.png
convert battery-full-charging.png -set colorspace RGB -crop 14x24+5+0 battery-full-charging.png
convert battery-good-charging.png -set colorspace RGB -crop 14x24+5+0 battery-good-charging.png
convert battery-empty-charging.png -set colorspace RGB -crop 14x24+5+0 battery-empty-charging.png
convert battery-medium-charging.png -set colorspace RGB -crop 14x24+5+0 battery-medium-charging.png
convert battery-caution-charging.png -set colorspace RGB -crop 14x24+5+0 battery-caution-charging.png
cd ..
cd ..
cd ..
echo 'Done. '

# Crop 22x22 Wired Panel Icons
echo 'Cropping 22x22 Wired network panel icons...'
cd Moka/22x22/status/
convert network-receive.png -set colorspace RGB -crop 12x22+4+0 network-receive.png
convert network-transmit.png -set colorspace RGB -crop 12x22+4+0 network-transmit.png
convert network-transmit-receive.png -set colorspace RGB -crop 12x22+4+0 network-transmit-receive.png
convert network-wired.png -set colorspace RGB -crop 12x22+4+0 network-wired.png
convert nm-device-wired.png -set colorspace RGB -crop 12x22+4+0 nm-device-wired.png
cd ..
cd ..
cd ..
echo 'Done. '

# Crop 24x24 Wired Panel Icons
echo 'Cropping 24x24 Wired network panel icons...'
cd Moka/24x24/status/
convert network-receive.png -set colorspace RGB -crop 12x24+6+0 network-receive.png
convert network-transmit.png -set colorspace RGB -crop 12x24+6+0 network-transmit.png
convert network-transmit-receive.png -set colorspace RGB -crop 12x24+6+0 network-transmit-receive.png
convert network-wired.png -set colorspace RGB -crop 12x24+6+0 network-wired.png
convert nm-device-wired.png -set colorspace RGB -crop 12x24+6+0 nm-device-wired.png
cd ..
cd ..
cd ..
echo 'Done. '
