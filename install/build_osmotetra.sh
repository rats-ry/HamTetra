#!/bin/sh
set -e
echo "\033[1;33mBuilding osmo-tetra-dmo\033[0m"
cd osmo-tetra-dmo/src/
make -j4
echo "\033[1;33mBuilt osmo-tetra-dmo\033[0m"
