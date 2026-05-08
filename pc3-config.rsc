# may/08/2026 10:54:00 by RouterOS 7.2
# software id = 
#
/disk
set sata1 disabled=no
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/port
set 0 name=serial0
/ip address
/ip dhcp-client
add interface=ether2
/system identity
set name=pc3