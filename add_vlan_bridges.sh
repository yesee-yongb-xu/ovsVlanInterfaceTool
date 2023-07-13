#!/bin/bash

CODE=$1
DEVICE=$2
VLAN_START=$3
VLAN_END=$4

if [[ -z $CODE || -z $DEVICE  || -z $VLAN_START || -z $VLAN_END ]]; then
  echo "Missing arguments. Usage: bash add_vlan_bridges.sh <CODE> <DEVICE> <VLAN START> <VLAN END>"
  exit 1
fi

for ((i=$VLAN_START; i<=$VLAN_END; i++))
do
    bridge="vlan-${i}-${CODE}"
    subinterface="${DEVICE}.${i}"

    echo "Adding bridge $bridge..."
    ovs-vsctl add-br $bridge

    echo "Adding port $subinterface to bridge $bridge..."
    ovs-vsctl add-port $bridge $subinterface
done

