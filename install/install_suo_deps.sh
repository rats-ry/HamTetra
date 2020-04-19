#!/bin/sh
set -e
echo "\033[1;33mInstalling dependencies for liquid-dsp and Suo\033[0m"
sudo apt install gcc make automake libsoapysdr-dev libzmq3-dev python3 python3-zmq
echo "\033[1;33mInstalled some dependencies\033[0m"
