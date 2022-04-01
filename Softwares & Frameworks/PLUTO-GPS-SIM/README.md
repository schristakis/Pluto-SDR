
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
