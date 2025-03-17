import socket
import sys

HOST, PORT = "localhost", 9998
# HOST, PORT = "10.1.2.3", 9998


f = open("imageClient.jpeg", "rb")
data = f.read()

# Create a socket (SOCK_STREAM means a TCP socket)
with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
    # Connect to server and send data
    sock.connect((HOST, PORT))
    sock.sendall(data)
    sock.sendall(b"\n")

    # Receive data from the server and shut down
    received = sock.recv(1024)


f = open("imageReceived.jpeg", "wb")
f.write(received)
f.close()