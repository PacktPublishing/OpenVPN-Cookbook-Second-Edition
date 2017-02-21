#!/bin/bash

/sbin/ip route add $route_vpn_gateway/32 dev $dev

n=1;
while [ $n -le 100 ]
do
    network=`env | sed -n "/^route_network_${n}=/s/^route_network_${n}=//p"`
    netmask=`env | sed -n "/^route_netmask_${n}=/s/^route_netmask_${n}=//p"`

    if [ -z "$network" -o -z "$netmask" ]
    then
        break
    fi

    /sbin/ip route add $network/$netmask dev $dev
    let n=n+1
done

