#!/bin/sh
git submodule init
git submodule update
install/install_limesdr.sh
install/suo_dependencies.sh
install/build_liquiddsp.sh
install/build_suo.sh
install/osmo_dependencies.sh
install/build_osmocore.sh
install/build_osmotetra.sh
