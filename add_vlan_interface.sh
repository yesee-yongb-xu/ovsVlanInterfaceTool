#!/bin/bash

for ((i=1001; i<=1050; i++))
do
    echo "TYPE=\"Vlan\""
    echo "PHYSDEV=\"eth1\""
    echo "VLAN_ID=\"$i\""
    echo
done
