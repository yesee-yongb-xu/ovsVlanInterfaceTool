#!/bin/bash

DEVICE=$1
VLAN_START=$2
VLAN_END=$3  


if [[  -z $DEVICE  || -z $VLAN_START || -z $VLAN_END ]]; then
  echo "Missing arguments. Usage: bash centos_add_vlan_interface.sh <DEVICE> <VLAN START> <VLAN END>"
  exit 1
fi


for ((i = $VLAN_START; i <= $VLAN_END; i++))
do
  VLAN_ID=$i

 
  CONFIG_FILE="/etc/sysconfig/network-scripts/ifcfg-${DEVICE}.${VLAN_ID}"
  echo "TYPE=\"Vlan\"" > "$CONFIG_FILE"
  echo "PHYSDEV=\"${INTERFACE}\"" >> "$CONFIG_FILE"
  echo "VLAN_ID=\"${VLAN_ID}\"" >> "$CONFIG_FILE"

  echo "VLAN ${VLAN_ID} config create done."
done


