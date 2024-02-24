#!/bin/sh

#  netconf.sh
#
#
#  Created by Kushal Prakash on 20/02/24.
#

sudo sysctl -w net.ipv4.ip_forward=1
sudo ip tuntap add name ogstun3 mode tun
sudo ip addr add 128.47.0.1/16 dev ogstun3
sudo ip link set ogstun3 up
sudo iptables -t nat -A POSTROUTING -s 128.47.0.0/16 ! -o ogstun3 -j MASQUERADE
