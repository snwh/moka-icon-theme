#!/bin/bash

# Check for imagemagick
echo 'Requires imagemagick.'
PACKAGE=$(dpkg-query -W --showformat='${Status}\n' imagemagick | grep "install ok installed")
echo "Checking if installed..."
if [ "" == "$PACKAGE" ]; then
   echo 'Imagemagick is not installed.'
   echo 'Installing... '
   echo 'Requires root privileges:'
   sudo apt-get install -y imagemagick
   echo 'Done. '
else
   echo 'Imagemagick is installed, proceeding... '
fi

# Crop 22x22 Bluetooth Panel Icons
echo 'Cropping 22x22 bluetooth panel icons...'
cd Moka/22x22/status/
bluetooth='14x22+4+0'
convert bluetooth-active.png -set colorspace RGB -crop $bluetooth bluetooth-active.png
convert blueman-tray.png -set colorspace RGB -crop $bluetooth blueman-tray.png
convert bluetooth-disabled.png -set colorspace RGB -crop $bluetooth bluetooth-disabled.png
convert bluetooth-paired.png -set colorspace RGB -crop $bluetooth bluetooth-paired.png
cd ..
cd ..
cd ..
echo 'Done. '

# Crop 24x24 Bluetooth Panel Icon
echo 'Cropping 24x24 bluetooth panel icons...'
cd Moka/24x24/status/
bluetooth='14x24+5+0'
convert bluetooth-active.png -set colorspace RGB -crop $bluetooth bluetooth-active.png
convert blueman-tray.png -set colorspace RGB -crop $bluetooth blueman-tray.png
convert bluetooth-disabled.png -set colorspace RGB -crop $bluetooth bluetooth-disabled.png
convert bluetooth-paired.png -set colorspace RGB -crop $bluetooth bluetooth-paired.png
cd ..
cd .. 
cd ..
echo 'Done. '

# Crop 22x22 Dropbox Panel Icons
echo 'Cropping 22x22 Dropbox panel icons...'
cd Moka/22x22/status/
dropbox='16x22+3+0'
convert dropboxstatus-x.png -set colorspace RGB -crop $dropbox dropboxstatus-x.png
convert dropboxstatus-logo.png -set colorspace RGB -crop $dropbox dropboxstatus-logo.png
convert dropboxstatus-idle.png -set colorspace RGB -crop $dropbox dropboxstatus-idle.png
convert dropboxstatus-busy.png -set colorspace RGB -crop $dropbox dropboxstatus-busy.png
convert dropboxstatus-busy2.png -set colorspace RGB -crop $dropbox dropboxstatus-busy2.png
cd ..
cd ..
cd ..
echo 'Done. '

# Crop 24x24 Dropbox Panel Icon
echo 'Cropping 24x24 Dropbox panel icons...'
cd Moka/24x24/status/
dropbox='16x24+4+0'
convert dropboxstatus-x.png -set colorspace RGB -crop $dropbox dropboxstatus-x.png
convert dropboxstatus-logo.png -set colorspace RGB -crop $dropbox dropboxstatus-logo.png
convert dropboxstatus-idle.png -set colorspace RGB -crop $dropbox dropboxstatus-idle.png
convert dropboxstatus-busy.png -set colorspace RGB -crop $dropbox dropboxstatus-busy.png
convert dropboxstatus-busy2.png -set colorspace RGB -crop $dropbox dropboxstatus-busy2.png
cd ..
cd .. 
cd ..
echo 'Done. '

# Crop 22x22 Battery Panel Icons
echo 'Cropping 22x22 Battery panel icons...'
cd Moka/22x22/status/
discharging='16x22+3+0'
charging='16x22+3+0'
convert battery-low.png -set colorspace RGB -crop $discharging battery-low.png
convert battery-full.png -set colorspace RGB -crop $discharging battery-full.png
convert battery-good.png -set colorspace RGB -crop $discharging battery-good.png
convert battery-empty.png -set colorspace RGB -crop $discharging battery-empty.png
convert battery-medium.png -set colorspace RGB -crop $discharging battery-medium.png
convert battery-caution.png -set colorspace RGB -crop $discharging battery-caution.png
convert battery-missing.png -set colorspace RGB -crop $discharging battery-missing.png
convert battery-full-charged.png -set colorspace RGB -crop $charging battery-full-charged.png
convert battery-low-charging.png -set colorspace RGB -crop $charging battery-low-charging.png
convert battery-full-charging.png -set colorspace RGB -crop $charging battery-full-charging.png
convert battery-good-charging.png -set colorspace RGB -crop $charging battery-good-charging.png
convert battery-empty-charging.png -set colorspace RGB -crop $charging battery-empty-charging.png
convert battery-medium-charging.png -set colorspace RGB -crop $charging battery-medium-charging.png
convert battery-caution-charging.png -set colorspace RGB -crop $charging battery-caution-charging.png
cd ..
cd ..
cd ..
echo 'Done. '

# Crop 24x24 Battery Panel Icons
echo 'Cropping 24x24 Battery panel icons...'
cd Moka/24x24/status/
discharging='16x24+4+0'
charging='16x24+4+0'
convert battery-low.png -set colorspace RGB -crop $discharging battery-low.png
convert battery-full.png -set colorspace RGB -crop $discharging battery-full.png
convert battery-good.png -set colorspace RGB -crop $discharging battery-good.png
convert battery-empty.png -set colorspace RGB -crop $discharging battery-empty.png
convert battery-medium.png -set colorspace RGB -crop $discharging battery-medium.png
convert battery-caution.png -set colorspace RGB -crop $discharging battery-caution.png
convert battery-missing.png -set colorspace RGB -crop $discharging battery-missing.png
convert battery-full-charged.png -set colorspace RGB -crop $charging battery-full-charged.png
convert battery-low-charging.png -set colorspace RGB -crop $charging battery-low-charging.png
convert battery-full-charging.png -set colorspace RGB -crop $charging battery-full-charging.png
convert battery-good-charging.png -set colorspace RGB -crop $charging battery-good-charging.png
convert battery-empty-charging.png -set colorspace RGB -crop $charging battery-empty-charging.png
convert battery-medium-charging.png -set colorspace RGB -crop $charging battery-medium-charging.png
convert battery-caution-charging.png -set colorspace RGB -crop $charging battery-caution-charging.png
cd ..
cd ..
cd ..
echo 'Done. '

# Crop 22x22 Wired Panel Icons
echo 'Cropping 22x22 Wired network panel icons...'
cd Moka/22x22/status/
wired='16x22+4+0'
convert network-receive.png -set colorspace RGB -crop $wired network-receive.png
convert network-transmit.png -set colorspace RGB -crop $wired network-transmit.png
convert network-transmit-receive.png -set colorspace RGB -crop $wired network-transmit-receive.png
convert network-wired.png -set colorspace RGB -crop $wired network-wired.png
convert nm-device-wired.png -set colorspace RGB -crop $wired nm-device-wired.png
cd ..
cd ..
cd ..
echo 'Done. '

# Crop 24x24 Wired Panel Icons
echo 'Cropping 24x24 Wired network panel icons...'
cd Moka/24x24/status/
wired='16x24+5+0'
convert network-receive.png -set colorspace RGB -crop $wired network-receive.png
convert network-transmit.png -set colorspace RGB -crop $wired network-transmit.png
convert network-transmit-receive.png -set colorspace RGB -crop $wired network-transmit-receive.png
convert network-wired.png -set colorspace RGB -crop $wired network-wired.png
convert nm-device-wired.png -set colorspace RGB -crop $wired nm-device-wired.png
cd ..
cd ..
cd ..
echo 'Done. '
