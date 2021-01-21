#!/bin/bash

VPN_IP=$(curl --silent https://am.i.mullvad.net/connected | grep -Po '^You are connected to Mullvad.*Your IP address is \K(.*)$')
echo $VPN_IP
while [[ $VPN_IP ]]; do
    echo "$(date) VPN OK"
    sleep 60;
done