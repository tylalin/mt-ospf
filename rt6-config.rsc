# may/08/2026 10:54:00 by RouterOS 7.2
# software id = 
#
/interface bridge
add name=Lo0
/disk
set sata1 disabled=no
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=pool1 ranges=192.168.2.100-192.168.2.200
/ip dhcp-server
add address-pool=pool1 interface=ether3 name=server1
/port
set 0 name=serial0
/routing ospf instance
add disabled=no name=default router-id=192.0.0.250
/routing ospf area
add disabled=no instance=default name=backbone
/ip address
add address=192.0.0.250 interface=Lo0 network=192.0.0.250
add address=10.0.0.10/30 interface=ether2 network=10.0.0.8
add address=192.168.2.1/24 interface=ether3 network=192.168.2.0
/ip dhcp-client
/ip dhcp-server network
add address=192.168.2.0/24 dns-server=192.168.2.1 gateway=192.168.2.1
/routing ospf interface-template
add area=backbone disabled=no networks=\
    192.168.2.0/24,192.0.0.250/32,10.0.0.0/24
/system identity
set name=rt6