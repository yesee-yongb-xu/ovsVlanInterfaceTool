#!/bin/bash
for ((i=1001; i<=1050; i++))
do
    ovs-vsctl del-br vlan-"$i"-br

done