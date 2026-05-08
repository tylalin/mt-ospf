# may/07/2026 10:51:50 by RouterOS 7.2
# software id = 
#
/interface bridge
add name=bridge1
/disk
set sata1 disabled=no
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/port
set 0 name=serial0
/interface bridge port
add bridge=bridge1 interface=ether2
add bridge=bridge1 interface=ether3
add bridge=bridge1 interface=ether4
/ip address
/ip dhcp-client
/system identity
set name=sw1