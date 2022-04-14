####### INSTALLATION #######

Download the firmware image(pluto.frm) from the link below:
https://github.com/tvelliott/charon/tree/master/build_pluto_image

############ WINDOWS OS #################

Open the Pluto mass storage device
Copy the file (pluto.frm) to the Mass Storage device
Eject (don't unplug) the mass storage device
This will cause LED1 to blink rapidly. This means programming is taking place. Do not remove power (or USB) while the device is blinking rapidly. It takes
approximately 4 minutes to properly program the device.
Once the device is done programming, it will re-appear as a mass storage device
Then you may use the device as normal.

############ Linux #################

cp ./pluto.frm /media/analog/PlutoSDR/

mount | grep PlutoSDR | awk '{print $1}'

sudo eject /dev/sdb


For configuration and execution follow the readme on the  charon github repository below:
https://github.com/tvelliott/charon/tree/master/
