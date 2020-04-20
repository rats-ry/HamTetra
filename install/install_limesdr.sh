#!/bin/sh
# LimeSDR installation on Ubuntu 18.04 as shown at
# https://wiki.myriadrf.org/Lime_Suite#Ubuntu_PPA
set -e
echo "\033[1;33mAdding LimeSDR repository\033[0m"
sudo apt-get -y install software-properties-common
sudo add-apt-repository -y ppa:myriadrf/drivers
sudo apt-get -y update
echo "\033[1;33mInstalling LimeSDR packages\033[0m"
sudo apt-get -y install limesuite liblimesuite-dev limesuite-udev limesuite-images soapysdr-tools soapysdr-module-lms7 libsoapysdr-dev
echo "\033[1;33mInstalled LimeSDR packages\033[0m"
