#!/bin/sh
set -e
echo "\033[1;33mBuilding libosmocore\033[0m"
cd libosmocore/
autoreconf -i
./configure --disable-pcsc
make -j4
echo "\033[1;33mBuilt libosmocore. Installing it\033[0m"
sudo make install
sudo ldconfig -i
echo "\033[1;33mInstalled libosmocore\033[0m"
