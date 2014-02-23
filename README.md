Moka Icon Theme
===============

Moka is a stylized Tango-esque Linux desktop icon set. They are designed to be a clear, simple and consistent.

As it is primarily artwork, Moka Icon Theme is licensed under the [Creative Commons Attribution-NoDerivatives 4.0 International License](http://creativecommons.org/licenses/by-nd/4.0/legalcode).

Any bundled software is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3, or (at your option) any later version.

###Preamble

If you find any bugs or issues with Moka or if you have a question, you can visit Moka's primary issue tracker on [GitHub](https://github.com/snwh/moka-icon-theme/issues). Also you may submit icons I've missed or that you would like using this [form](http://goo.gl/39uPJU).

###Download

Moka can be downloaded [here](http://www.mokaproject.com/moka-icon-theme/#download) for whatever you like.

###Getting the Source

The source for Moka Icon Theme can be found [here](https://github.com/snwh/moka-icon-theme).

Alternatively, you can clone the latest version its git repository:

    git clone https://github.com/snwh/moka-icon-theme.git

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