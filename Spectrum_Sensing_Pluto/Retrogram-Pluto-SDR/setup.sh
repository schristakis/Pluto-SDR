sudo apt-get install -y sshpass
echo -n "

Would you like to proceed with default settings? (yes/no) -> "
read VAR
if [[ $VAR == yes ]]
then
    echo "Proceeding with default Settings.."
    sed -i  '/retrogram-plutosdr.arm --rate/s/.*//' onpluto.sh
    echo  './retrogram-plutosdr.arm --rate 61e6 --bw 56e6 --gain 73 --freq 5500e6 --step 5e6' | tee -a onpluto.sh
else
    echo "Enter your Settings(Leave empty and press ENTER for default value): "
    echo -n "Rate(default: 61e6) -> "
    read VAR1

    echo -n "Bandwidth(default: 56e6) -> "
    read VAR2

    echo -n "Gain(default: 73) -> "
    read VAR3

    echo -n "Frequency(default: 5500e6) -> "
    read VAR4
    
    echo -n "Step(default: 5e6) -> "
    read VAR5
    sed -i  '/retrogram-plutosdr.arm --rate/s/.*//' onpluto.sh
    echo  "./retrogram-plutosdr.arm --rate $VAR1 --bw $VAR2 --gain $VAR3 --freq $VAR4 --step $VAR5" | tee -a onpluto.sh
fi
chmod +x onpluto.sh
sshpass -p 'analog' scp retrogram-plutosdr.arm root@10.64.45.45:/tmp
sshpass -p 'analog' scp linux root@10.64.45.45:/tmp
sshpass -p 'analog' scp onpluto.sh root@10.64.45.45:/tmp
sshpass -p 'analog' ssh -t root@10.64.45.45 /tmp/onpluto.sh


