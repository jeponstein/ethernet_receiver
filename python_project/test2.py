from socket import *



interface = "enp37s0"
src_addr = b'\x00\xd8\x61\x2d\x29\x00'

dst_addr = b'\x00\x0a\x35\x00\x01\x02'


def sendPacket(data):
    # FUNCTION USES MAC ADRESSES, ONLY AVAILABLE ON LINUX
    s = socket(AF_PACKET, SOCK_RAW)

    s.bind( (interface, 0) )

    checksum = b'\x00\x00\x00\x00'
    ethertype = b'\x08\x04'


    if(type(data) == str):
        data = data.encode()
    elif(type(data) == int):
        data = data.to_bytes()

    print(data)

    s.send(dst_addr+src_addr+ethertype+data+checksum)


if __name__ == "__main__":


    sendPacket(b'6')

    sendPacket(b'9000000000000000000000000000000000000000000000000000000000000000000000000000000')

    sendPacket(b'2')