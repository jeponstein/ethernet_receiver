import socket
import time

# from socket.h
# define SO_BINDTODEVICE 25

HOST, PORT = "192.168.1.10", 9001

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
# sock.setsockopt(socket.SOL_SOCKET, )

data = b'attempting to send from desktop to pynq board'

sock.sendto( data , (HOST, PORT) )

if __name__ == "__main__":
    while True:
        sock.sendto( data , (HOST, PORT) )
        time.sleep(1)
        print("sending")

