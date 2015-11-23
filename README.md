Moka Icon Theme
===============

Moka is a stylized Linux desktop icon set, designed to be clear, simple and consistent.

Moka Icon Theme (the icon assets and sources) are licensed under a [Creative Commons Attribution-ShareAlike 4.0](http://creativecommons.org/licenses/by-sa/4.0/legalcode) license.

Any bundled software is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3, or (at your option) any later version.

###Getting the Source

The original source for Moka Icon Theme can be found [here](https://github.com/moka-project/moka-icon-theme). You can clone the latest version from the git repository:

    git clone https://github.com/moka-project/moka-icon-theme.git

###Using the Source

There are scripts to simplify the rendering process; to run them (and edit icons) you will need:

 * inkscape
 * python3

To render new icons from their source SVG files, run the following:

    ./render-bitmaps.py
    ./render-bitmaps-hidpi.py

If it's throwing an error, the script may not be executable, try:
	
	chmod +x render-bitmaps.py
	chmod +x render-bitmaps-hidpi.py

This script will look in the source directories (../src/*) and render the respective icons (provided there are changes).

###Building/Installing Moka

You can build and install the theme from source or run the included install script.

    bash autogen.sh
    make
    sudo make install

-----------