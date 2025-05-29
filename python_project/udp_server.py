import socket 

def start_server(host, port):
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind((host, port))

    imageFlag = 0
    imageData = b''

    startPayload = b'\x00\x00\x00\x00\x00'
    finishPayload = b'\xFF\xFF\xFF\xFF\xFF'

    while True:
        data, addr = sock.recvfrom(1024)

        if data == startPayload:
            imageFlag = 1
            imageData = b''
        elif data == finishPayload:
            imageFlag = 0
            return(imageData)
        elif imageFlag == 1:
            imageData += data

def decode(data):
    print(data)
    pass

if __name__ == "__main__":
    # HOST, PORT = "169.254.113.239", 9000
    # HOST, PORT = "192.168.0.101", 9000
    HOST, PORT = "127.0.0.1", 9000

    while True:
        data = start_server(HOST, PORT)
        decode(data)
