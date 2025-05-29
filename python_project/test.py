from socket import *

DEST_HOST, DEST_PORT = "192.168.0.105", 5001


def sendPacket(data):
    s = socket(AF_INET, SOCK_DGRAM)

    if(type(data) == str):
        data = data.encode()
    elif(type(data) == int):
        data = data.to_bytes()

    print(data)


    s.sendto(data, (DEST_HOST, DEST_PORT))
    pass



if __name__ == "__main__":


    # sendPacket(b'6')

    sendPacket(b'2')