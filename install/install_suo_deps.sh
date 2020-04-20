#!/bin/sh
set -e
echo "\033[1;33mInstalling dependencies for liquid-dsp and Suo\033[0m"
sudo apt-get -y install gcc make automake libzmq3-dev python3 python3-zmq
echo "\033[1;33mInstalled some dependencies\033[0m"
