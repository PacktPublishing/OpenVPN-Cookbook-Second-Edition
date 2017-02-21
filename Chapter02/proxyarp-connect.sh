#!/bin/bash
/sbin/arp -i eth0  -Ds $ifconfig_pool_remote_ip eth0 pub
