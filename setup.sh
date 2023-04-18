#!/bin/bash

# Backup Old Config Files, Allow cp to Silently Fail if They Don't Exist
mkdir -p ~/.old
cp ~/.bashrc ~/.old/bashrc 2>/dev/null
cp ~/.bash_aliases  ~/.old/bash_aliases 2>/dev/null

# Enter Into Setup Folder
cd Linux-Utils
cp bashrc ~/.bashrc

# Setup Aliases
cp bash_aliases ~/.bash_aliases

# Load new bashrc
source ~/.bashrc

# Upgrade Nano
chmod +x upgrade_nano.sh && ./upgrade_nano.sh

# Setup Base Packages
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install -y ssh mdadm htop tree net-tools git-lfs ffmpeg python3 python3-pip virtualenv

# Return to parent directory
cd ..
