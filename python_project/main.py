from socket import *
import socketserver

####################################### DESKTOP VARIABLES       ################################################

# interface names of interface
interface = "enp37s0"

# TX MAC adresses used to send packets:
src_addr = b'\x00\xd8\x61\x2d\x29\x41'

# ip addres and port on which server listens
# HOST, PORT = "192.168.0.101", 9001
HOST, PORT = "127.0.0.1", 9001

####################################### PYNQ VARIABLES          ################################################

# # adress of pynq board maybe? idk
# dst_addr = b'\x00\x0a\x35\x00\x01\x02'

# # address of laptop Jesper (testing purposes)
# dst_addr = b'\xa8\xb1\x3b\x94\xa0\xcb'

####################################### DEBUGGING "MODE"        ################################################

# (DEBUG:) loopback adress, uncomment when testing with pynq or other
src_addr = b'\x00\x00\x00\x00\x00\x00'
dst_addr = b'\x00\x00\x00\x00\x00\x00'
interface = "lo"

DEST_HOST, DEST_PORT = "127.0.0.1", 9001

# This send packet works on mac adress levels, 
#       apparently there is another that works for udp on IP level?
# sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) # UDP
# sock.sendto(bytes(MESSAGE, "utf-8"), (UDP_IP, UDP_PORT))\

def sendPacketIP(data):
    # FUNCTION USES IP ADRESS, ALSO AVAILABLE ON WINDOWS
    # (STILL NEEDS TO BE TESTED)
    s = socket(AF_INET, SOCK_DGRAM)

    if(type(data) == str):
        data = data.encode()
    elif(type(data) == int):
        data = data.to_bytes()

    print(data)


    s.sendto(data, (DEST_HOST, DEST_PORT))
    pass


def sendPacket(data):
    # FUNCTION USES MAC ADRESSES, ONLY AVAILABLE ON LINUX
    s = socket(AF_PACKET, SOCK_RAW)

    s.bind( (interface, 0) )

    checksum = b'\x00\x00\x00\x00'
    ethertype = b'\x08\x01'


    if(type(data) == str):
        data = data.encode()
    elif(type(data) == int):
        data = data.to_bytes()

    print(data)

    s.send(dst_addr+src_addr+ethertype+data+checksum)

    pass

enable = 0
received_bits = b''

class MyUDPHandler(socketserver.BaseRequestHandler):

    def handle(self):
        global enable
        global received_bits
        data = self.request[0].strip()

        print(data)

        if (enable == 0):
            if (data == b'starter'):
                enable = 1
                received_bits = b''
                print("enable to 1")
        elif(data != b'finish'):
            print("appending to recv_bits")
            received_bits += data
        else:
            enable = 0
            print("enable back to 0")
            print("All received bits: ")
            print(received_bits)


def HandleReceiving():
    with socketserver.UDPServer((HOST, PORT), MyUDPHandler) as receiver:
        receiver.serve_forever()
    

if __name__ == "__main__":

    sendPacketIP(b'90')


