#!/bin/sh
set -e
echo "\033[1;33mInstalling more dependencies for osmocom stuff\033[0m"
# It took some time to find out all these dependencies!
# I guess several of them are used by some non-TETRA parts of osmocore.
sudo apt install libtool libtalloc-dev pkg-config libusb-1.0-0-dev libgnutls28-dev libsctp-dev
echo "\033[1;33mInstalled more dependencies\033[0m"
