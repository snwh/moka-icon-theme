#!/bin/bash
aclocal
automake --force-missing --add-missing
autoconf
./configure
sudo make install
