#!/bin/bash

# Backup Old Config Files, Allow cp to Silently Fail if They Don't Exist
mkdir ~/.old
cp ~/.bashrc ~/.old/.bashrc 2>/dev/null
cp ~/.bash_aliases  ~/.old/.bash_aliases 2>/dev/null

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
