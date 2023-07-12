#!/bin/bash

for ((i=1001; i<=1050; i++))
do
    echo "auto eth0.$i"
    echo "iface eth0.$i inet static"
    echo "    vlan-raw-device eth0"
    echo
done
