import socket
import time

# from socket.h
# define SO_BINDTODEVICE 25

# HOST, PORT = "192.168.1.10", 9000
HOST, PORT = "127.0.0.1", 9000

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
# sock.setsockopt(socket.SOL_SOCKET, )

data = b'attempting to send from desktop to pynq board'

sock.sendto( data , (HOST, PORT) )

if __name__ == "__main__":

    sock.sendto( b'\x01' , (HOST, PORT) )
    sock.sendto( b'\x00\x00\x00\x00\x00' , (HOST, PORT) )

    sock.sendto(b'\x01' , (HOST, PORT) )
    sock.sendto(b'\x02' , (HOST, PORT) )
    sock.sendto(b'\x04' , (HOST, PORT) )

    sock.sendto(b'\x03' , (HOST, PORT) )



    sock.sendto(b'\xFF\xFF\xFF\xFF\xFF', (HOST, PORT) )



