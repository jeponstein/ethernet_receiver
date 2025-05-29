from socket import *

import math

# used for qf demonstration, can be removed in later versions
from random import randint

startPayload = b'\x00\x00\x00\x00\x00'
finishPayload = b'\xFF\xFF\xFF\xFF\xFF'

### MAC adresses of host machine & interface name of host           ###
### Find adress of host by using "ifconfig" in shell (linux)        ###
interface = "enp37s0"           #something like enp37s0 or eth0
host_addr = b'\x00\xd8\x61\x2d\x29\x41'
pynq_addr = b'\x00\x0a\x35\x00\x01\x02'

### IP adress and port that is used on the host machine.            ###
# HOST, PORT = "169.254.113.239", 9000
# HOST, PORT = "192.168.0.101", 9000
HOST, PORT = "127.0.0.1", 9000


def start_server(host, port):
    sock = socket(AF_INET, SOCK_DGRAM)
    sock.bind((host, port))

    imageFlag = 0
    imageData = b''

    while True:
        data, addr = sock.recvfrom(1024)

        if data == startPayload:
            imageFlag = 1
            imageData = b''
        elif data == finishPayload:
            imageFlag = 0
            return(imageData)
        elif imageFlag == 1:
            imageData += data

def decode(data):
    print(data)

def sendPacket(qf):
    # quality factor is rounded up to nearest increment of 4% due to limited #ethertype. 
    # if data of packet can be exported on pynq board then finer control can be used
    # the 1501 comes from the fact that ethertype values of 1501 - 1535 are undefined, 
    # so using them should not give any trouble. there are 25 (100/4) possible qf
    factor = math.ceil(qf/4) + 1501
    # pynq uses little endian encoding? check to be sure, wireshark on pc seems to be big endian. 
    factor = factor.to_bytes(2, 'little')

    print(factor)

    s = socket(AF_PACKET, SOCK_RAW)
    s.bind( (interface, 0) )

    # dest_addr, src_addr, ethertype, data, checksum
    s.send(pynq_addr+host_addr+factor+b'\x01'+b'\x00\x00\x00\x00')

if __name__ == "__main__":

    while True:
        data = start_server(HOST, PORT)

        # placeholder decoding function.
        decode(data)

        # randomint inststead of adjusting qf based on link speed.
        sendPacket(randint(1,100))
