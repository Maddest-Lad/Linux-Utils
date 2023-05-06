#!/bin/bash

# Run in the Right Place
cd $HOME/DNS # (Location For Cron Job, Feel Free to Move Wherever and Change as Such) 

USERNAME=""
PASSWORD=""
HOSTNAME=""

# Load Saved External IP (Recreate if Necessary)
if [ ! -f "external_ip" ]; then
    touch external_ip
fi
source external_ip

# Resolve current public IP
NEW_IP=$(curl -s "https://domains.google.com/checkip")

# Check
if [ "$IP" != "$NEW_IP" ]; then
        # Update Google DNS Record
        URL="https://${USERNAME}:${PASSWORD}@domains.google.com/nic/update?hostname=${HOSTNAME}&myip=${NEW_IP}"
        curl -s $URL

        echo "$(date), Updated $IP to $NEW_IP" >> log.csv
        IP="$NEW_IP"
        declare -p IP > external_ip

else
        echo "No Change Detected"
fi
