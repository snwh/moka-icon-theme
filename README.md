Moka Icon Theme
===============

Moka is a stylized FreeDesktop icon set, created with simplicity in mind. It uses simple geometry & bright colours and has been designed and optimized to achieve the a pixel-perfect look for your desktop.

## Copying or Reusing

This project has mixed licencing. You are free to copy, redistribute and/or modify aspects of this work under the terms of each licence accordingly (unless otherwise specified).

The Moka icon assets (any and all source `.svg` files or rendered `.png` files) are licenced under the terms of the [Creative Commons Attribution-ShareAlike 4.0 License](https://creativecommons.org/licenses/by-sa/4.0/).

Included scripts are free software licenced under the terms of the [GNU General Public License, version 3](https://www.gnu.org/licenses/gpl-3.0.txt).

When reusing this work please include a proper attribution:

> "[Moka Icons](http://snwh.org/moka)" by [Sam Hewitt](http://samuelhewitt.com/) is licensed under [CC-SA-4.0](http://creativecommons.org/licenses/by-sa/4.0/)

This repository is a soft-fork of upstream that adds pull requests made upstream without needing
to wait for a formal release upstream.  The fourth . version number (e.g. 5.4.0.1) is this project
specific - the first three . numbers (5.4.0) follow upstream release numbers. Please make all pull requests via upstream - not via this soft-fork.

## Downloading Moka

Download instructions for all sorts of systems are available [here](https://snwh.org/moka/download).

## Installing & Using

You can build and install Moka from source using Meson.

```bash
# build
meson "build" --prefix=/usr
# install
sudo ninja -C "build" install
```

By default it installs to `/usr/` but you can specify a different directory with a prefix like: `/usr/local` or `$HOME/.local`.

After which you should be able to pick Moka as your icon or cursor theme in GNOME Tweak tool, or you can set either from a terminal with:

```bash
# set the icon theme
gsettings set org.gnome.desktop.interface icon-theme "Moka"
```

### Uninstalling Moka

To uninstall Moka, simply run the following. (If you installed it without superuser priveleges just omit the  `sudo`.)

```bash
sudo ninja -C "build" uninstall
```

Once uninstalled you can reset your icon and cursor theme to the default setting by running the following.

```bash
# reset icon theme to default
gsettings reset org.gnome.desktop.interface icon-theme
```

## Missing Icons & Requests

You can file an icon request as a [GitHub issue](https://github.com/snwh/moka-icon-theme/issues/new). Filing an icon request or reporting a missing icon, please take care in providing the following useful information: 

 - A screenshot of your issue or an image of the original icon you are requesting to be themed
 - The file name for the missing icon or the requested icon, for example `gimp.png` or `system-shutdown.svg`
 - A short description of the application or software that you are requesting an icon for.

Note: some software ships hardcoded icons, meaning when you install icons are not placed in the system-wide directory `/usr/share/icons` which makes them unthemeable.

## Contributing

Contributions are obviously welcome! If you would like to contribute to this project, please have [read this](/CONTRIBUTING.md) regarding contributions.

## Donate & Support

If you would like to support development by making a donation you can do so [here](https://snwh.org/donate) or by becoming a supporter on [Patreon](http://patreon.com/snwh/) or [Liberapay](http://liberapay.com/snwh/). &#x1F60A;
