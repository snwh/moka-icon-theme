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

To render new icons from their source SVG files, run the following from within the `/src` subdirectory:

    ./render-bitmaps.py
    ./render-bitmaps-hidpi.py

If it's throwing an error, the script may not be executable, try:
	
	chmod +x render-bitmaps.py
	chmod +x render-bitmaps-hidpi.py

This script will look in the source directories `/src/*` and render the respective icons (provided there are changes).

Afterwards, the rendered icons need to be installed.
To do this, you may just copy the `Moka` directory to `~/.local/share/icons/Moka`.
However, if you, lets say, added an icon named `web-example` and want to install only this particular icon, then you should run

    find -name 'web-example.png' -exec cp --parents {} ~/.local/share/icons/ \;

from inside of this repository's root directory.

###Building/Installing Moka

You can build and install the theme from source or run the included install script.

    bash autogen.sh
    make
    sudo make install

-----------
