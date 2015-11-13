#!/bin/bash
python render-bitmaps.py
python render-bitmaps-hidpi.py
aclocal
automake --force-missing --add-missing
autoconf
./configure
