#!/bin/sh
set -e
echo "\033[1;33mBuilding libsuo\033[0m"
cd suo/libsuo
make -j4
echo "\033[1;33mBuilding suoapp\033[0m"
cd ../suoapp
make -j4
echo "\033[1;33mBuilt suo\033[0m"
#sudo make install
