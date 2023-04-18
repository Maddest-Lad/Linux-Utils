#!/bin/bash

# Backup Old Config Files, Allow cp to Silently Fail if They Don't Exist
mkdir ~/.old
cp ~/.bashrc ~/.old/.bashrc 2>/dev/null
cp ~/.bash_aliases  ~/.old/.bash_aliases 2>/dev/null
cd Linux-Utils

echo "Which Distro Are You Installing On? "
select yn in "Ubuntu" "Kali" "Generic" "Quit"; do
  case $yn in
    Ubuntu ) cp bashrc-ubuntu ~/.bashrc; break;;
    Kali ) cp bashrc-kali ~/.bashrc; break;;
    Generic ) cp bashrc-ubuntu ~/.bashrc; break;;
    Quit ) exit;;
  esac
done

# Setup Aliases
cp bash_aliases ~/.bash_aliases
source ~/.bashrc

# Upgrade Nano
chmod +x upgrade_nano.sh && ./upgrade_nano.sh

# Setup Base Packages
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install -y ssh mdadm htop tree net-tools git git-lfs ffmpeg python3 python3-pip virtualenv
