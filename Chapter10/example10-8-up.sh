#!/bin/bash

/sbin/ifconfig $1 0.0.0.0 up
# needed for tap interfaces !!!
echo 1 > /proc/sys/net/ipv4/conf/$1/proxy_arp

