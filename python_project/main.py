import socket

PYNQ_HOST = "127.0.0.1"  # Standard loopback interface address (localhost)
PYNQ_PORT = 65431       # Port to listen on (non-privileged ports are > 1023)

DESKTOP_HOST = " "
DESKTOP_PORT = " "

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:

    s.bind( (PYNQ_HOST, PYNQ_PORT) )
    s.listen(1)
    conn, addr = s.accept()



