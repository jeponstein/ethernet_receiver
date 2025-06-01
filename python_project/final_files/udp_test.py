import socket
import time

# from socket.h
# define SO_BINDTODEVICE 25

# HOST, PORT = "192.168.1.10", 9000
HOST, PORT = "127.0.0.1", 9000

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
# sock.setsockopt(socket.SOL_SOCKET, )

data = b'attempting to send from desktop to pynq board'

# sock.sendto( data , (HOST, PORT) )

if __name__ == "__main__":


    # ignored
    sock.sendto( b'\x00\x00\x00\x00\x01' , (HOST, PORT) )

    # indicates that the image starts here (startflag \x00\x00\x00\x00)
    sock.sendto( b'\x00\x00\x00\x00\x00\x00\x00\x00'  , (HOST, PORT) )

    # start packet (counter at 0, 32bits/4bytes. data is \x01)
    sock.sendto(b'\x00\x00\x00\x00\x01' , (HOST, PORT) )
    sock.sendto(b'\x00\x00\x00\x01\x02' , (HOST, PORT) )
    sock.sendto(b'\x00\x00\x00\x02\x04' , (HOST, PORT) )
    sock.sendto(b'\x00\x00\x00\x03\x03' , (HOST, PORT) )
    # counter incremented to 3, all data should be \x01\x02\x04\x03

    # indicates image has ended. (finishFlag \xFF\xFF\xFF\xFF)
    sock.sendto(b'\x00\x00\x00\x00\xFF\xFF\xFF\xFF', (HOST, PORT) )



