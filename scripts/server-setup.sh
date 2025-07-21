#!/usr/bin/bash
# this is a sample script for setting up docker and some goodies 
read -p "Do you want to run an update? (yes/no): " answer
if [[ "$answer" == "yes" ]]; then
    echo "running update, upgrade and clean up please do reboot after the script finishes"
    sudo apt update -y && sudo apt upgrade -y && sudo apt-get autoremove --purge && sudo apt-get autoclean
else
    echo "run the below command for update upgrade and clean up"
    echo "sudo apt update -y && sudo apt upgrade -y && sudo apt-get autoremove --purge && sudo apt-get autoclean"
fi
echo 'installing docker'
curl -fsSL https://get.docker.com | bash
sudo usermod -aG docker $USER
echo 'setting up tailscale'
curl -fsSL https://tailscale.com/install.sh | sh
echo 'setting up distrobox for running some test'
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh
read -p "Do you want to reboot? (yes/no): " answer
if [[ "$answer" == "yes" ]]; then
    echo "rebooting system."
else
    echo "reboot your own system dummy."
fi
