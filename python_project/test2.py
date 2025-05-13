from socket import *



interface = "enp37s0"
src_addr = b'\x00\xd8\x61\x2d\x29\x00'

dst_addr = b'\x00\x0a\x35\x00\x01\x02'


def sendPacket():
    # FUNCTION USES MAC ADRESSES, ONLY AVAILABLE ON LINUX
    s = socket(AF_PACKET, SOCK_RAW)

    s.bind( (interface, 0) )

    checksum = b'\x00\x00\x00\x00'
    ethertype = b'\x08\x04'

    data=b'\x00'

    for i in range(1,100):
        i = i+1031
        i = i.to_bytes(2, 'little')
        print(i)
        s.send(dst_addr+src_addr+i+data+checksum)



if __name__ == "__main__":

    sendPacket()