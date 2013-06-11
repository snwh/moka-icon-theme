Moka Icon Theme
===============

"Moka" is meant to be a comprehensive and well-designed icon set.

Moka Icon Theme is distributed under the terms of either GNU GPL v.3 or Creative Commons BY-SA 3.0 license.

###Source

The source for Moka Icon Theme can be found at: https://github.com/snwh/moka-icon-theme

You can get the latest version from the git repository:

    git clone https://github.com/snwh/moka-icon-theme.git

NOTE: Moka is very much a WIP.

###Installation

To install, run the install script to copy the icons to your home folder. 

    ./INSTALL

Running as root will copy the icon set to  /usr/share/icons to be available system-wide.
    
    sudo ./INSTALL

###Making New Icons

To run the provided scripts (and edit icons) you will need:

 * inkscape
 * ruby
 * python3

To render a new icon, run the following.

    ./render-pngs.py

This will read the SVGs in the "src" directory, and render the respective icons (provided there are changes).

To render symbolic icons, run:

    ./render-symbolic.rb

I'd like to thank whomever in the GNOME project wrote those scripts, which I poached and modified. :-)

###Bugs, Issues, Questions, Requests

If you find any bugs or issues with Moka or if you have a question or request, you can visit: https://github.com/snwh/moka-icon-theme/issues

-----------
