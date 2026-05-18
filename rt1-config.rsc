# may/14/2026 22:23:44 by RouterOS 7.2
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
add disabled=no name=default originate-default=if-installed router-id=\
    192.0.0.255
/routing ospf area
add disabled=no instance=default name=backbone
/ip address
add address=192.0.0.255 interface=Lo0 network=192.0.0.255
add address=192.0.0.1/29 interface=ether2 network=192.0.0.0
/ip dhcp-client
/ip dns
set servers=1.1.1.1
/ip firewall nat
/ip route
add disabled=no distance=1 dst-address=0.0.0.0/0 gateway=172.31.255.29 \
    pref-src="" routing-table=main scope=30 suppress-hw-offload=no \
    target-scope=10
/routing ospf interface-template
add area=backbone auth-id=0 cost=10 disabled=no networks=\
    192.0.0.0/29,192.0.0.255/32 priority=1
/system identity
set name=rt1