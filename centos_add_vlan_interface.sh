#!/bin/bash

INTERFACE="eth1"
START_VLAN_ID=1001
NUM_VLANS=50  

for ((i = 0; i < NUM_VLANS; i++))
do
  VLAN_ID=$((START_VLAN_ID + i))

 
  CONFIG_FILE="/etc/sysconfig/network-scripts/ifcfg-${INTERFACE}.${VLAN_ID}"
  echo "TYPE=\"Vlan\"" > "$CONFIG_FILE"
  echo "PHYSDEV=\"${INTERFACE}\"" >> "$CONFIG_FILE"
  echo "VLAN_ID=\"${VLAN_ID}\"" >> "$CONFIG_FILE"

  echo "VLAN ${VLAN_ID} config create done."
done


