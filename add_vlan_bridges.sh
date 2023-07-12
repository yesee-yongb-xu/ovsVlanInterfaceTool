#!/bin/bash

for ((i=1001; i<=1050; i++))
do
    ovs-vsctl add-br vlan-"$i"-br
    ovs-vsctl add-port vlan-"$i"-br eth0."$i"
done