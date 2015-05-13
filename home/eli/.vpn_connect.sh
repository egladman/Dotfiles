#!/bin/bash

        AP=$(iwconfig wlp1s0 | grep 'ESSID' | awk '{print $4}' | sed 's/ESSID://g' | sed 's/"//g')

        TUNNEL=( $(ip link | sed -n -e 's/^.*\(tun.: \)/\1/p' | awk -F":" '{print $1}' | sed '$!N;s/\n/ /' | sed '$!N;s/\n/ /' | sed '$!N;s/\n/ /') )

if [ ${TUNNEL[@]0:1} = tun* ]

        then
                ip link delete ${TUNNEL[@]0:1}
fi

if [ $AP = "osuwireless" ]

        then
                cp /etc/resolv.conf{.bak}
                sed -i -e '/nameserver/ i nameserver 209.222.18.222'  /etc/resolv.conf -i -e '/nameserver/ i nameserver 209.222.18.218' -i -e '2,$ d'
                echo "/etc/resov.conf has been modified"
                openvpn --config /etc/openvpn/CA\ Toronto.ovpn
                echo "successfully connected to VPN"

        else
                echo "successfully connected to VPN"
                openvpn --config /etc/openvpn/CA\ Toronto.ovpn
fi

PING=$(ping -c 3 8.8.8.8)

if [ $PING = ping: unknown host* ]
        then
                echo "ERROR: could not ping 8.8.8.8"
