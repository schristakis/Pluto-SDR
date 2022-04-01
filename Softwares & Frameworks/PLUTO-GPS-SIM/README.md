
https://github.com/Mictronics/multi-sdr-gps-sim

sudo apt-get install libxml2 libxml2-dev bison flex libcdk5-dev cmake

sudo apt-get install libaio-dev libusb-1.0-0-dev libserialport-dev libxml2-dev libavahi-client-dev doxygen graphviz

sudo apt-get install libcurl4-openssl-dev


git clone https://github.com/analogdevicesinc/libiio.git

cd libiio

cmake ./

make

sudo make install


git clone https://github.com/analogdevicesinc/libad9361-iio.git

cd libad9361-iio

cmake ./

make

sudo make install

git clone https://github.com/mictronics/multi-sdr-gps-sim

cd multi-sdr-gps-sim

/etc/init.d/dbus start
/etc/init.d/avahi-daemon start


gps-sim [options]
Options:
--nav-file          -e  <filename> RINEX navigation file for GPS ephemeris (required)
--geo-loc           -l  <location> Latitude, Longitude, Height (static mode) e.g. 35.681298,139.766247,10.0
--start             -s  <date,time> Scenario start time YYYY/MM/DD,hh:mm:ss (use 'now' for actual time)
--gain              -g  <gain> Set TX gain, HackRF: 0-47dB, Pluto: -80-0dB (default 0)
--duration          -d  <seconds> Duration in seconds
--target            -t  <distance,bearing,height> Target distance [m], bearing [°] and height [m]
--ppb               -p  <ppb> Set oscillator error in ppb (default 0)
--radio             -r  <name> Set the SDR device type name (default none)
--uri               -U  <uri> ADLAM-Pluto URI
--network           -N  <network> ADLAM-Pluto network IP or hostname (default pluto.local)
--motion            -m  <name> User motion file (dynamic mode)
--iq16                  Set IQ sample size to 16 bit (default 8 bit)
--disable-iono      -I  Disable ionospheric delay for spacecraft scenario
--verbose           -v  Show verbose output and details about simulated channels
--interactive       -i  Use interactive mode
--amplifier         -a  Enable TX amplifier (default OFF)
--use-ftp           -f  Pull actual RINEX navigation file from FTP server
--rinex3            -3  Use RINEX v3 navigation data format
--disable-almanac       Disable transmission of almanac information
--help              -?  Give this help list
--usage                 Give a short usage message
--version           -V  Print program version

SDR device types (use with --radio or -r option):
    none
    iqfile
    hackrf
    plutosdr
