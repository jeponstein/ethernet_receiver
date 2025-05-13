
import socket

HOST, PORT = "192.168.1.10", 5001


# SOCK_DGRAM is the socket type to use for UDP sockets
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)


sock.sendto(b'test', (HOST, PORT))


