sudo apt-get install -y sshpass
chmod +x onpluto.sh
wget https://github.com/r4d10n/retrogram-plutosdr/raw/master/retrogram-plutosdr.arm
sshpass -p 'analog' scp retrogram-plutosdr.arm root@10.64.45.45:/tmp
wget https://github.com/r4d10n/retrogram-plutosdr/raw/master/linux
sshpass -p 'analog' scp linux root@10.64.45.45:/tmp
sshpass -p 'analog' scp onpluto.sh root@10.64.45.45:/tmp
sshpass -p 'analog' ssh -t root@10.64.45.45 /tmp/onpluto.sh

