import socket
import time

HOST = "127.0.0.1"    # The server's hostname or IP address
PORT = 65431          # The port used by the server

# HOST = "169.254.8.158"  # The server's hostname or IP address
# PORT = 5001             # The port used by the server

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    
    s.connect( (HOST, PORT) )

    while True:
        s.sendall(b"0")
        time.sleep(5)

        s.sendall(b"1")
        time.sleep(5)

        s.sendall(b"2")
        time.sleep(5)

        s.sendall(b"3")
        time.sleep(5)


