#!/bin/bash

# 獲取所有的bridge列表
bridges=$(ovs-vsctl list-br)

# 檢查是否有bridge存在
if [[ -z $bridges ]]; then
  echo "No bridges found."
  exit 1
fi

# 迴圈刪除每個bridge
for bridge in $bridges; do
  echo "Deleting bridge $bridge..."
  ovs-vsctl del-br $bridge
done
