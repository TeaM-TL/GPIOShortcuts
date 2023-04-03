#!/bin/bash
if [[ "$EUID" = 0 ]]; then
    echo "Already root"
else
    sudo -k
    if sudo true; then
        echo "Successfully got root"
    else
        echo "Wrong password"
        exit 1
    fi
fi

sudo pip3 install pyautogui
sudo pip3 install pynput

ETC=/etc/GPIOShortcuts
SYSTEMD=/lib/systemd/system/
if [ ! -d $DIR ]; then
    sudo mkdir $ETC
fi
sudo cp config.txt $ETC
sudo cp service.py $ETC
sudo cp GPIOShortcuts.service $SYSTEMD
sudo cp GPIOrestart.* $SYSTEMD
sudo chmod 644 $SYSTEMD/GPIOShortcuts.service
sudo chmod 644 $SYSTEMD/GPIOrestart.*
sudo chmod +x $ETC/service.py

sudo systemctl daemon-reload

sudo systemctl enable GPIOrestart.timer
sudo systemctl enable GPIOShortcuts.service
sudo systemctl restart GPIOShortcuts.service

echo "Done"

