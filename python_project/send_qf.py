from socket import *

dst_addr = b'\x00\x0a\x35\x00\x01\x02'
checksum = b'\x00\x00\x00\x00'
data=b'\x00'

# MIGHT NEED TO BE RECONFIGURED DEPENDING ON HOST:
# HOST NEEDS TO BE A LINUX MACHINE
interface = "enp0s31f6"
src_addr = b'\x00\xd8\x61\x2d\x29\x41'

def sendPacket(factor):

    factor = factor+1501
    factor = factor.to_bytes(2, 'little')

    s = socket(AF_PACKET, SOCK_RAW)
    s.bind( (interface, 0) )
    s.send(dst_addr+src_addr+factor+data+checksum)
    print("sent a packet")
    
sendPacket(100)

sendPacket(50)

