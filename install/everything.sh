#!/bin/sh
git submodule init
git submodule update
install/install_limesdr.sh
install/install_suo_deps.sh
install/build_liquiddsp.sh
install/build_suo.sh
install/install_osmo_deps.sh
install/build_osmocore.sh
install/build_osmotetra.sh
