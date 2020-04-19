#!/bin/sh
set -e
echo "\033[1;33mBuilding liquid-dsp\033[0m"
cd liquid-dsp
./bootstrap.sh
./configure
make -j4
echo "\033[1;33mBuilt liquid-dsp. Installing it\033[0m"
sudo make install
sudo ldconfig
echo "\033[1;33mInstalled liquid-dsp\033[0m"
