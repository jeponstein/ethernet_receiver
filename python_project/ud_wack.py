from socket import *


# haha only on linux ohohohoh
s = socket(AF_PACKET, SOCK_RAW)

s.bind( ("eth0", 0) )


# A8-B1-3B-94-A0-CB
src_addr = "\xA8\xB1\x3B\x94\xA0\xCB"

# 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };
dst_addr = "\x00\x0a\x35\x00\x01\x02"


payload = ("["*30)+"PAYLOAD"+("]"*30)
checksum = "\x00\x00\x00\x00"
ethertype = "\x08\x01"
s.send(dst_addr+src_addr+ethertype+payload+checksum)