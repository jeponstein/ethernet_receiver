
import socket


HOST, PORT = "192.168.1.10", 9000

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as sock:
    # Connect to server and send data
    sock.connect((HOST, PORT))
    sock.sendall(b'test')
    sock.sendall(b"\n")

    # Receive data from the server and shut down
    received = sock.recv(1024)
    print(received)