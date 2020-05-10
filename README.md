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
various LimeSDR models, so that's recommended.

Due to the lack of full duplex and/or transmit timestamp support, devices such
as ADALM-PLUTO and HackRF are not guaranteed to work properly. Some support
for these is possible in the future.

Recommended operating system is Ubuntu Linux running on any laptop, server or
desktop computer. Raspberry Pi 3 or 4 running Raspbian or other single-board
computers running Armbian can be used as well.
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

If you just installed LimeSuite, it's a good idea to make sure the
LimeSDR firmware and gateware versions are up to date. Do:

    LimeUtil --update

## Running it

To run a DMO repeater, start:

    osmo-tetra-dmo/src/hamtetra_main2

It should print a help for command line parameters. Fill in your SDR hardware
and TETRA frequency and it should start transmitting. If changes to some other
configuration is needed, edit the source code.

## Alternative platforms

So, LimeSDR is too expensive or you can't wait for one to arrive?
No worries! There's also some experimental support for
[traditional sound-card based SDRs](https://www.sm5bsz.com/linuxdsp/hware/sbl1.htm).
Depending on your hardware, it may or may not work properly.
ALSA `snd_pcm_link` call is used to synchronize record and playback streams,
which seemed to work well enough on one tested motherboard integrated
sound chip, but not so well on one tested USB sound card.

Connect Line Out and Line In to I/Q mixers, use some signal generator as a
local oscillator and tune it 12 kHz below the desired center frequency.
Start something like `./hamtetra_main2 alsa:hw:0,0 0` and use `alsamixer -c 0`
to adjust the mixer settings. Replace `hw:0,0` and `-c 0` with the correct
sound card number if needed.
