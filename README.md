# HamTetra

This is a repository for an implementation of Terrestrial Trunked Radio (TETRA)
using software defined radios. The goal is to implement a direct-mode (DMO)
repeater and a trunked-mode (TMO) base station.

The system consists of multiple pieces from different repositories, which are
pulled in here as git submodules.


## Supported platforms

Supported radios are those providing a SoapySDR module, full duplex capability
and timestamp support. This includes at least the LimeSDR, LimeSDR Mini, XTRX,
BladeRF and various USRP models. Most experimentation so far has happened on
LimeSDR, so that's recommended.

Due to the lack of full duplex and/or transmit timestamp support, devices such
as ADALM-PLUTO and HackRF are not guaranteed to work properly. Some support
for these is possible in the future.

Recommended operating system is Ubuntu Linux running on any laptop, server or
desktop computer. Single-board computers running Armbian can be used as well.
Several other platforms may work but have not been tested.


## Installation for LimeSDR on Ubuntu

The following steps have been tested to work on a fresh installation
or a container based on Ubuntu 18.04. 

    sudo apt install git
    cd
    git clone https://github.com/OH2NXX/HamTetra.git
    cd HamTetra
    git submodule init
    git submodule update
     
    # Skip install_limesdr.sh if LimeSDR drivers and SoapySDR are installed
    # already. Avoid installing a mixture of multiple versions.
    install/install_limesdr.sh
     
    install/suo_dependencies.sh
    install/build_liquiddsp.sh
    install/build_suo.sh
     
    install/osmo_dependencies.sh
    install/build_osmocore.sh
    install/build_osmotetra.sh

The installation scripts will occasionally ask for your password in order to
use sudo. On distributions other than Ubuntu or Debian, try to find the
equivalent packages for the dependencies and install them manually.


## Running it

To transmit a DMO repeater presence signal, start these two programs in
different terminals:

    suo/suoapp/build/suo tetra/inarinet-config.txt

    osmo-tetra-dmo/src/hamtetra_main
