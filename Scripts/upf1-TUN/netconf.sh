#!/bin/sh

#  netconf.sh
#  
#
#  Created by Kushal Prakash on 20/02/24.
#

sudo sysctl -w net.ipv4.ip_forward=1
sudo ip tuntap add name ogstun mode tun
sudo ip addr add 128.45.0.1/16 dev ogstun
sudo ip link set ogstun up
sudo iptables -t nat -A POSTROUTING -s 128.45.0.0/16 ! -o ogstun -j MASQUERADE
