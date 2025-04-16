
import socket

HOST, PORT = "192.168.0.10", 9000
# HOST, PORT = "127.0.0.1", 9001


# SOCK_DGRAM is the socket type to use for UDP sockets
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

info = [b'starter', b'message1',b'message2',b'message3',b'message4', b'finish']

for i in info:
    sock.sendto( i , (HOST, PORT) )
    print(i)


