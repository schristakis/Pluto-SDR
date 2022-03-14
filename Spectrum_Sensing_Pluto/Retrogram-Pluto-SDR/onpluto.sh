cd /tmp
mkdir /usr/share/terminfo
mkdir /usr/share/terminfo/l
cp linux /usr/share/terminfo/l
export TERM=linux
chmod +x ./retrogram-plutosdr.arm
./retrogram-plutosdr.arm --rate 61e6 --bw 56e6 --gain 73 --freq 5500e6 --step 5e6