from socket import *

s = socket(AF_PACKET, SOCK_RAW)


# POSSIBLE SOURCE INTERFACE TO USE TO SEND PACKETS

# desktop Jesper eth interface
s.bind( ("enp37s0", 0) )

# # (DEBUG:) loopback, stays local
# s.bind( ("lo", 0) )


# POSSIBLE SOURCE MAC ADRESSES TO USE TO SEND PACKETS

# adress of desktop jesper
src_addr = b'\x00\xD8\x61\x2d\x29\x41'


# POSSIBLE DESTINATION MAC ADRESSES TO USE TO SEND PACKETS


# # adress of pynq board maybe? idk
# dst_addr = b'\x00\x0a\x35\x00\x01\x02'

# address of laptop Jesper
dst_addr = b'\xa8\xb1\x3b\x94\xa0\xcb'

# # (DEBUG:) loopback adress 
# src_addr = b'\x00\x00\x00\x00\x00\x00'
# dst_addr = b'\x00\x00\x00\x00\x00\x00'

payload = b'[payload data here, such as a quality vector for JPEG encoding, wouldnt that be nice hahaha ]'
checksum = b'\x00\x00\x00\x00'
ethertype = b'\x08\x01'



s.send(dst_addr+src_addr+ethertype+payload+checksum)

