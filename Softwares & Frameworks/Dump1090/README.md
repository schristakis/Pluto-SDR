######## OVERVIEW #########
Dump 1090 is a Mode S decoder specifically designed for RTLSDR devices.

############ INSTALLATION #############
On the host machine do the following:

sudo apt-get install git libxml2 libxml2-dev bison flex libcdk5-dev cmake python3-pip
cd ~
git clone --branch v0.19 https://github.com/analogdevicesinc/libiio.git
cd libiio
cmake ./
make all -j4
sudo make install
sudo ldconfig
cd bindings/python/
sudo python3 setup.py.cmakein install
cd ~
git clone https://github.com/analogdevicesinc/libad9361-iio.git
cd libad9361-iio
cmake ./
make -j3
sudo make install
cd ~
git clone https://github.com/analogdevicesinc/pyadi-iio.git
cd pyadi-iio
sudo python3 setup.py install
cd 
sudo apt-get update
sudo apt-get upgrade

####### RUN dump1090 on Host Machine #########
git clone https://github.com/PlutoSDR/dump1090
cd dump1090
make
run with ->  ./dump1090 [OPTIONS]


####### RUN dump1090 on Pluto SDR #########
git clone https://github.com/PlutoSDR/dump1090
sudo apt install gcc-arm-linux-gnueabihf
wget https://github.com/analogdevicesinc/plutosdr-fw/releases/download/v0                                                                                                                                                                                                                                             .30/sysroot-v0.30.tar.gz
tar zxvf sysroot-v0.30.tar.gz
mv staging $HOME/pluto-0.30.sysroot
cd dump1090
arm-linux-gnueabihf-gcc -mfloat-abi=hard --sysroot=$HOME/pluto-0.30.sysroot -std=gnu99 -O2 -g -Wall -W  -c dump1090.c
arm-linux-gnueabihf-gcc -mfloat-abi=hard --sysroot=$HOME/pluto-0.30.sysroot -std=gnu99 -O2 -g -Wall -W  -c anet.c
arm-linux-gnueabihf-gcc -mfloat-abi=hard --sysroot=$HOME/pluto-0.30.sysroot -std=gnu99 -O2 -g -o dump1090 dump1090.o anet.o  -liio -lpthread -lm -lad9361
scp dump1090 root@192.168.2.1:/root/
RUN WITH:
ssh -t root@192.168.2.1 /root/dump1090 [OPTIONS]


