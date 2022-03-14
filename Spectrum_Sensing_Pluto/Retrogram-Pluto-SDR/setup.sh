sudo apt-get install -y sshpass
chmod +x onpluto.sh
sshpass -p 'analog' scp retrogram-plutosdr.arm root@10.64.45.45:/tmp
sshpass -p 'analog' scp linux root@10.64.45.45:/tmp
sshpass -p 'analog' scp onpluto.sh root@10.64.45.45:/tmp
sshpass -p 'analog' ssh -t root@10.64.45.45 /tmp/onpluto.sh

