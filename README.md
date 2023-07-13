# ovsVlanInterfaceTool

這幾個 bash script 用來快速建置 vlan interface 以及 ovs add vlan interface


三行命令快速完成 ovs vlan inteface 建置

```bash
# bash centos_add_vlan_interface.sh eth9 1001 1050
# systemctl restart network
# bash add_vlan_bridges.sh A eth0 1001 1050
```


需注意 add_vlan_bridges.sh 命令最前面的 A 代表的是每台虛擬系統 ID 的轉換，轉換規則可參考 excel 欄位規則

id 1 => A
id 16384 => XFD
id 11881375 => ZZZZZ 

最多接受到 ZZZZZ
