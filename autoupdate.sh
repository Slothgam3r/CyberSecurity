#!bin/bash

echo "Welcome $USER "


echo "Beginning auto update script $DATE "
sudo apt update
sudo apt upgrade -y


echo "Update and Upgrade complete. Do you want to reboot the pi, remove packages, or stop the stript?(rb/rp/s)"

while true ; do
    echo "What next?"
    read answer
    if [ $answer == "s" ] ; then
        echo "Ok, Have a great day"
        exit
    elif [ $answer == "rb" ] ; then
        echo "Rebooting now"
        sudo reboot now
    elif [ $answer == "rp" ] ; then
        echo "Removing packages"
        sudo apt autoclean -y
    else
        echo "Script failed, please try again"
    fi
done
