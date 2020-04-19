# HamTetra

This is a repository for an implementation of Terrestrial Trunked Radio (TETRA) using software defined radios. The goal is to implement a direct-mode (DMO) repeater and a trunked-mode (TMO) base station.

The system consists of multiple pieces from different repositories, which are pulled in here as git submodules.


## Supported platforms

Supported radios are those providing a SoapySDR module, full duplex capability and timestamp support. This includes at least the LimeSDR, LimeSDR Mini, XTRX, BladeRF and various USRP models.

Due to the lack of full duplex and/or transmit timestamp support, devices such as ADALM-PLUTO and HackRF are not guaranteed to work properly. Some support for these is possible in the future.

Recommended operating system is Ubuntu Linux running on any laptop, server or desktop computer. Single-board computers running Armbian can be used as well. Windows port seems to be possible but not supported yet. Several other platforms may work but have not been tested.
