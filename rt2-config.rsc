# may/08/2026 10:53:59 by RouterOS 7.2
# software id = 
#
/interface bridge
add name=Lo0
/disk
set sata1 disabled=no
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/port
set 0 name=serial0
/routing ospf instance
add disabled=no name=default router-id=192.0.0.254
/routing ospf area
add disabled=no instance=default name=backbone
/ip address
add address=192.0.0.254 interface=Lo0 network=192.0.0.254
add address=192.0.0.2/29 interface=ether2 network=192.0.0.0
add address=192.0.0.9/30 interface=ether3 network=192.0.0.8
add address=10.0.0.1/30 interface=ether4 network=10.0.0.0
add address=10.0.0.5/30 interface=ether5 network=10.0.0.4
add address=10.0.0.9/30 interface=ether6 network=10.0.0.8
/ip dhcp-client
/routing ospf interface-template
add area=backbone disabled=no networks=\
    192.0.0.0/29,192.0.0.8/30,192.0.0.254/32,10.0.0.0/24 priority=1
/system identity
set name=rt2