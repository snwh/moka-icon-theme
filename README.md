Moka Icon Theme
===============

Moka is a stylized Linux desktop icon set, and the titular icon theme of the [Moka Project](http://mokaproject.com). They are designed to be clear, simple and consistent.

Moka Icon Theme (the icon assets and sources) are licensed under a [Creative Commons Attribution-ShareAlike 4.0](http://creativecommons.org/licenses/by-sa/4.0/legalcode) license.

Any bundled software is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3, or (at your option) any later version.

###Preamble

If you find any bugs or issues with Moka or if you have a question, you can visit Moka's primary issue tracker on [GitHub](https://github.com/moka-project/moka-icon-theme/issues). Also you may submit icons I've missed or that you would like using this [form](http://mokaproject.com/requests/).

###Download

Moka can be downloaded [here](http://www.mokaproject.com/moka-icon-theme/#download).

###Getting the Source

The source for Moka Icon Theme can be found [here](https://github.com/moka-project/moka-icon-theme).

Alternatively, you can clone the latest version its git repository:

    git clone https://github.com/moka-project/moka-icon-theme.git

###Using the Source

There are scripts to simplify the rendering process; to run them (and edit icons) you will need:

 * inkscape
 * python3

To render new icons from their source SVG files, run the following:

    ./render-pngs.py

If it's throwing an error, the script may not be executable, try:
	
	chmod +x render-pngs.py

This script will look in the source directories (../src/*) and render the respective icons (provided there are changes).

-----------