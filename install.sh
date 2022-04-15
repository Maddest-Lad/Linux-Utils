#!/bin/bash

# Backup Old Config Files, Allow cp to Silently Fail if They Don't Exist
mkdir ~/.old-config
cp ~/.bashrc ~/.old/.bashrc 2>/dev/null
cp ~/.bash_aliases  ~/.old/.bash_aliases 2>/dev/null

# Use Correct Bashrc File Depending on OS
distro="$(lsb_release -is)" # "Ubuntu" "Kali"

if [$distro = "Ubuntu"]
  then cp bashrc-ubuntu ~/.bashrc

  elif [$distro = "Kali"]
    then cp bashrc-kali ~/.bashrc

  else
    # The Ubuntu Config is the Most Generic, So It Ought to Work on Most Systems
    echo "$distro Not Recognised, Override? (Yes/No)? "
    select yn in "Yes" "No"; do
      case $yn in
        Yes ) cp bashrc-ubuntu ~/.bashrc; break;;
        No ) exit;;
      esac
    done
fi

# Setup Aliases
cp bash_aliases ~/.bash_aliases

# Source Everything
source ~/.bashrc
source ~/.bash_aliases
