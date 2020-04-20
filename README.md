# HamTetra

This is a repository for an implementation of Terrestrial Trunked Radio (TETRA) using software defined radios. The goal is to implement a direct-mode (DMO) repeater and a trunked-mode (TMO) base station.

The system consists of multiple pieces from different repositories, which are pulled in here as git submodules.


## Supported platforms

Supported radios are those providing a SoapySDR module, full duplex capability and timestamp support. This includes at least the LimeSDR, LimeSDR Mini, XTRX, BladeRF and various USRP models.

Due to the lack of full duplex and/or transmit timestamp support, devices such as ADALM-PLUTO and HackRF are not guaranteed to work properly. Some support for these is possible in the future.

Recommended operating system is Ubuntu Linux running on any laptop, server or desktop computer. Single-board computers running Armbian can be used as well. Windows port seems to be possible but not supported yet. Several other platforms may work but have not been tested.


## Installation for LimeSDR on Ubuntu

If you haven't installed SDR drivers, SoapySDR or anything yet,
take a fresh installation or a container based on Ubuntu 18.04 and do:

    sudo apt install git
    cd
    git clone https://github.com/OH2NXX/HamTetra.git
    cd HamTetra
    install/everything.sh

The installation will occasionally ask for your password in order to use sudo.

If you have installed SDR drivers already or want to experiment with different
platforms, consider running the installation steps manually or running only
part of the installation scripts instead of running `everything.sh`.

For example, to install only Suo in case SoapySDR has already been installed:

    git submodule init
    git submodule update
    install/install_suo_deps.sh
    install/build_liquiddsp.h
    install/build_suo.sh


## Running it

To transmit a DMO repeater signal, start these two programs in different
terminals:

    suo/suoapp/build/suo tetra/inarinet-config.txt

    osmo-tetra-dmo/src/tetra-dmo-rep
