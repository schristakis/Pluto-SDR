# Pluto-SDR

###################### IP CONFIGURATION #######################

When pluto is connected to the host machine, find and open the config.txt file.
In order to change the IP we need to update the [NETWORK] settings of the PlutoSDR ipaddr (default is 192.168.2.1), 
and your host PC settings ipaddr_host (default is 192.168.2.10).
The ip_addr and the  ipaddr_host must be unique, and must be on the same subnet.
Change the ip_addr to the desired IP and configure ipaddr so they belong to the same subnet.
Then, save the configured file and eject (not unplug) the PlutoSDR device from your host.
Wait for 5 seconds
Finally unplug the SDR device and plug it in back and the IP should have been changed successfully.



##################### Pluto Access via Ethernet #################################

When pluto is connected to the host machine, find and open the config.txt file.
In order to access Pluto via ethernet we need to update the [ETHERNET] settings of the PlutoSDR.
Go under [ETHERNET] and change the ipaddr_eth to the desired IP. 
Caution: the IP must belong to the subnet of the LAN.
(In my case the LAN uses 10.64.45.45 subnet and the IP I gave Pluto is 10.64.45.45)
Then, save the configured file and eject (not unplug) the PlutoSDR device from your host.
Wait for 5 seconds
Finally unplug the SDR device and plug it in back and the IP should have been changed successfully

SETUP:
After configuring the config.txt file, we connect the power usb port of Pluto to turn it on.
On the other usb port (which is for data transfering) we plug an ethernet adapter, which has 
a usb port compatible to Pluto's port on one side and a female ethernet port on the other side.
Then we connect the female ethernet port of the adapter to the desired LAN via an Ethernet cable.
Ping the IP of pluto (ping 10.64.45.45) to confirm that we can actually send data to Pluto.
To access Pluto run -> ssh root@your_Pluto_Eth_IP (In my case-> ssh root@10.64.45.45) and the password is "analog".
