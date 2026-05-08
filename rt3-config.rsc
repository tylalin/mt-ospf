# may/08/2026 10:54:00 by RouterOS 7.2
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
add disabled=no name=backbone router-id=192.0.0.253
/routing ospf area
add disabled=no instance=backbone name=default
/ip address
add address=192.0.0.253 interface=Lo0 network=192.0.0.253
add address=192.0.0.10/30 interface=ether3 network=192.0.0.8
add address=192.0.0.3/29 interface=ether2 network=192.0.0.0
add address=10.1.0.1/30 interface=ether4 network=10.1.0.0
add address=10.1.0.5/30 interface=ether5 network=10.1.0.4
add address=10.1.0.9/30 interface=ether6 network=10.1.0.8
/ip dhcp-client
/routing ospf interface-template
add area=default cost=20 disabled=no networks=\
    192.0.0.0/24,192.0.0.253/32,10.1.0.0/24 priority=1
/system identity
set name=rt3