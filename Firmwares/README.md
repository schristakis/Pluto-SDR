GENERALLY

The following content desribes the prosedure to update install a desired firmware.


############  WINDOWS OS  #################

- Open the Pluto mass storage device
- Download the desired firmware version from https://github.com/analogdevicesinc/plutosdr-fw/releases/latest and open the firmware file pluto.frm
- Copy the file (pluto.frm) to the Mass Storage device
- Eject (don't unplug) the mass storage device
- This will cause LED1 to blink rapidly. This means programming is taking place. Do not remove power (or USB) while the device is blinking rapidly. It takes     
  approximately 4 minutes to properly program the device.
- Once the device is done programming, it will re-appear as a mass storage device
- Then you may use the device as normal.


############  Linux  #################

> cp ./pluto.frm /media/analog/PlutoSDR/
> mount | grep PlutoSDR | awk '{print $1}'
> sudo eject /dev/sdb

Wait 4 minutes for firmware to update!!!! Do not unplug the device.
