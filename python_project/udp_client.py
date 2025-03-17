# this client will try to replicate the pynq board, as it sending packets from image files

import socket
import sys
# data = " ".join(sys.argv[1:])

HOST, PORT = "localhost", 9999

f = open("imageClient.jpeg", "rb")
data = f.read()
# data += bytes("\n", "utf-8")

datagram_size = 400
info = [data[i:i+datagram_size] for i in range(0, len(data), datagram_size)]


# SOCK_DGRAM is the socket type to use for UDP sockets
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# As you can see, there is no connect() call; UDP has no connections.
# Instead, data is directly sent to the recipient via sendto().

data = b''

for i in info:
    sock.sendto(i , (HOST, PORT) )
    received = sock.recv(datagram_size+5)
    data += received


f = open("imageReceived.jpeg", "wb")
f.write(data)
f.close()
