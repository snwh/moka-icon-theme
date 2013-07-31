Moka Icon Theme
===============

"Moka" is meant to be a comprehensive and well-designed icon set.

Moka Icon Theme artwork is distributed under the terms of a Creative Commons BY-SA 3.0 license & the related source software the GNU LGPL v.3

###Source

The source for Moka Icon Theme can be found at: https://github.com/snwh/moka-icon-theme

You can get the latest version from the git repository:

    git clone https://github.com/snwh/moka-icon-theme.git

The source for the Moka Dark variant can be found at: https://github.com/snwh/moka-icon-theme-dark

You can get it's latest version from it's git repository:

    git clone https://github.com/snwh/moka-icon-theme-dark.git

NOTE: Moka is very much a WIP.

###Installation

For Ubuntu, Moka is available in a PPA, which can be added using:

    sudo add-apt-repository ppa:snwh/moka-icon-theme-daily

    sudo apt-get update && sudo apt-get install moka-icon-theme

Or, for the dark variant:

    sudo apt-get update && sudo apt-get install moka-icon-theme-dark

To install from source, run the install script to copy the icons to your home folder. 

    ./INSTALL

Running as root will copy the icon set to  /usr/share/icons to be available system-wide.
    
    sudo ./INSTALL

###Making icons with the provided template & scripts

To run the provided scripts (and edit icons) you will need:

 * inkscape
 * ruby
 * python3

To render a new icon, run the "render-pngs.py" script.

    ./render-pngs.py

This will read the SVGs in the "src" directories, and render the respective icons (provided there are changes).

To render symbolic icons, run:

    ./render-symbolic.rb

###Bugs, Issues, Questions, Requests

If you find any bugs or issues with Moka or if you have a question or request, you can visit: https://github.com/snwh/moka-icon-theme/issues or https://launchpad.net/moka-icon-theme

-----------
