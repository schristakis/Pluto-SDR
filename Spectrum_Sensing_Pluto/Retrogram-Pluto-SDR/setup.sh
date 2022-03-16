sudo apt-get install -y sshpass
echo -n "

Would you like to proceed with default settings? (yes/no) -> "
read VAR
while true
do
    if [[ $VAR == yes ]]
    then
        echo "Proceeding with default Settings.."
        sed -i  '/retrogram-plutosdr.arm --rate/s/.*//' onpluto.sh
        echo  './retrogram-plutosdr.arm --rate 61e6 --bw 56e6 --gain 73 --freq 5500e6 --step 5e6' | tee -a onpluto.sh
        break
    
    elif [[ $VAR == no ]]
    then
        echo "Enter your Settings(Leave empty and press ENTER for default value): "
        echo -n "Rate(default: 61e6) -> "
        read VAR1
        if [ -z $VAR1 ]
        then
            VAR1=61e6
        fi

        echo -n "Bandwidth(default: 56e6) -> "
        read VAR2
        if [ -z $VAR2 ]
        then
            VAR2=56e6
        fi

        echo -n "Gain(default: 73) -> "
        read VAR3
        if [ -z $VAR3 ]
        then
            VAR3=73
        fi

        echo -n "Frequency(default: 5500e6) -> "
        read VAR4
        if [ -z $VAR4 ]
        then
            VAR4=5500e6
        fi
        
        echo -n "Step(default: 5e6) -> "
        read VAR5
        if [ -z $VAR5 ]
        then
            VAR5=5e6
        fi

        sed -i  '/retrogram-plutosdr.arm --rate/s/.*//' onpluto.sh
        echo  "./retrogram-plutosdr.arm --rate $VAR1 --bw $VAR2 --gain $VAR3 --freq $VAR4 --step $VAR5" | tee -a onpluto.sh
        break
    else
        echo -n "Invalid Option!! Type yes or no -> "
        read VAR
    fi

done
chmod +x onpluto.sh
sshpass -p 'analog' scp retrogram-plutosdr.arm root@10.64.45.45:/tmp
sshpass -p 'analog' scp linux root@10.64.45.45:/tmp
sshpass -p 'analog' scp onpluto.sh root@10.64.45.45:/tmp
sshpass -p 'analog' ssh -t root@10.64.45.45 /tmp/onpluto.sh

