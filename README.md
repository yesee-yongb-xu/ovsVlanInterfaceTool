# ovsVlanInterfaceTool

這幾個 bash script 用來快速建置 vlan interface 以及 ovs add vlan interface

需要檢查 vlan 模組是否有打開

```bash
# modprobe 8021q
# lsmod | grep -i 8021q
```

三行命令快速完成 ovs vlan inteface 建置

```bash
# bash centos_add_vlan_interface.sh eth9 1001 1050
# systemctl restart network
# bash add_vlan_bridges.sh 00000 eth0 1001 1050
```


需注意 add_vlan_bridges.sh 命令最前面的 00000 代表的是 ovsvm 流水號



將採用 00000-zzzzz-ZZZZZ 36 個字元的編碼方式
00000 代表最小的數字
ZZZZZ 代表最大的數字"


