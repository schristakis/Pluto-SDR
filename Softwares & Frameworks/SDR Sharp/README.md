######### INSTALLATION ##########

Incompatible with the latest version of SDR#.
Needs a SDR# version containing a "FrontEnds.xml" file.
https://airspy.com/downloads/sdrsharp-x86-noskin.zip is compatible.
Download it and follow the installation wizard.

Pluto SDR is not included, so follow the prosedure below to add it:

- Download the pluto plugin zip file from https://github.com/Manawyrm/sdrsharp-plutosdr/releases

- Extract the files included and copy them.

- Then paste them in the SDR# folder that was created during the installation of SDR#.

- Copy this line: 
                 <add key="PlutoSDR" value="SDRSharp.PlutoSDR.PlutoSDRIO,SDRSharp.PlutoSDR" />
                 
- Open the FrontEnds.xml, located in the SDR# folder and paste the line below before the last line ( </frontendPlugins>)

- Then run SDR# and Pluto SDR will be supported as well.


