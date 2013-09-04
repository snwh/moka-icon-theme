Moka Icon Theme
===============

Moka icons are designed to be a clear, simple and consistent icon set.

Moka Icon Theme is distributed under the terms of the GNU GPL v.3

###Preamble

If you find any bugs or issues with Moka or if you have a question, you can visit Moka's issue tracker on [GitHub](https://github.com/snwh/moka-icon-theme/issues) or its page on [Launchpad](https://launchpad.net/moka-icon-theme).

If you're feeling awesome, you may add icons I've missed or that you would like using this [form](http://goo.gl/39uPJU) or contribute a [donation](http://www.snwh.org/donate/ "Donate"). :)

*Known Issue:*

	gtk-update-icon-cache-3.0: The generated cache was invalid.
	WARNING: icon cache generation failed for /usr/share/icons/Moka

This is happenning due to a space in some of the symlinks contained within the theme. It should not interfere with the usability of the theme.

###Download & Install

A distro-agnostic zip file for Moka Icon Theme can be found [here](http://www.snwh.org/files/moka-icon-theme.zip).

Extract and install locally by running* the INSTALL script. 

    ./INSTALL

*Running as root will install the icon set in '/usr/share/icons' to be available system-wide.

For Ubuntu and its derivatives, Moka icons (and its variants) are available in a Launchpad PPA* which can be added using:

    sudo add-apt-repository ppa:snwh/moka-icon-theme-daily 

    sudo apt-get update && sudo apt-get install moka-icon-theme

*The PPA is synchronized with the git repository and should always deliver the latest version within a few hours, at most a day.

###Official Variants

 * [Moka-Dark Icon Theme](https://github.com/snwh/moka-icon-theme-dark)
 * [Moka-Blue Icon Theme](https://github.com/snwh/moka-icon-theme-blue)

###Uninstall

To uninstall, run* the uninstall script to remove the locally installed icons. 

    ./UNINSTALL

*Running as root will remove the icon set from the system-wide folder (/usr/share/icons), if installed.

###Getting the Source

The source for Moka Icon Theme can be found [here](https://github.com/snwh/moka-icon-theme).

Alternatively, you can clone the latest version its git repository:

    git clone https://github.com/snwh/moka-icon-theme.git

###Using the Source

There are scripts to simplify the rendering process; to run them (and edit icons) you will need:

 * inkscape
 * ruby
 * python3

To render new icons from their source SVG files, run the following:

    ./render-pngs.py

This script will look in the source directories (../src/*) and render the respective icons (provided there are changes).

Likewise, to render symbolic icons (from the source in ../src/symbolic), run:

    ./render-symbolic.rb

-----------