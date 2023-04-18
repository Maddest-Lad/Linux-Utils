#!/bin/bash

# This Script Should be Placed in $HOME/DNS

# Run in the Right Place
cd $HOME/DNS

USERNAME=""
PASSWORD=""
HOSTNAME=""

# Load External IP
source external_ip

# Resolve current public IP
NEW_IP=$(curl -s "https://domains.google.com/checkip")
# echo "$IP $NEW_IP"

# Check
if [ "$IP" != "$NEW_IP" ]; then
        # Update Google DNS Record
        URL="https://${USERNAME}:${PASSWORD}@domains.google.com/nic/update?hostname=${HOSTNAME}&myip=${IP}"
        curl -s $URL

        echo "$(date), Updated $IP to $NEW_IP" >> log.csv
        IP="$NEW_IP"
        declare -p IP > external_ip

else
        echo "No Change Detected"
fi
