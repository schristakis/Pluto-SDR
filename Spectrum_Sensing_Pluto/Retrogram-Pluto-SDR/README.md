Retrogram is a wideband spectrum analyzer on your terminal/ssh console with ASCII art.

###################   Installation   ##########################

To install and run the program download Retrogram-Pluto-SDR folder and
in that folder execute the command -> ./setup.sh
 
 If the following error occurs:
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)!
It is also possible that a host key has just been changed.

Do:
ssh-keygen -f "/home/"hostname"/.ssh/known_hosts" -R "10.64.45.45"
If error insists, then you should probably try to ssh for the first time:
ssh root@10.64.45.45 (password: analog)
Then exit and  rerun ./setup.sh

When the bash script starts to run, it gives the option of customizing the default values.
These values can also be customized while the programm is running according to the following:

• Center Frequency using keys [f-F]

• Sampling rate using keys [r-R]

• Bandwidth using keys [b-B]

• Gain using keys [g-G]

• Reference level using keys [l-L]

• Dynamic Range using keys [d-D]

• Frame rate using keys [s-S]

• Peak Hold using keys [h-H]

• DFT bin count using keys [n-N]

• Tuning step using keys [t-T]

• Hide/Show controls using keys [c-C]

• Quit program using keys [q-Q]
