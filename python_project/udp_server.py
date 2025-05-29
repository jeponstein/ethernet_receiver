# import socketserver
# class MyUDPHandler(socketserver.BaseRequestHandler):
#     def handle(self):
    
#         data = self.request[0].strip()

#         if imageFlag == 1:
#             imageData += data
#         elif data == startPayload:
#             imageFlag = 1
#             imageData = b''
#         elif data == finishPayload:
#             imageFlag = 0
#             print(imageData)

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

        if imageFlag == 1:
            imageData += data
        elif data == startPayload:
            imageFlag = 1
            imageData = b''
        elif data == finishPayload:
            imageFlag = 0
            print(imageData)
            return(imageData)

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

    # startPayload = b'\x00\x00\x00\x00\x00'
    # finishPayload = b'\xFF\xFF\xFF\xFF\xFF'
    # imageFlag = 0
    # with socketserver.UDPServer((HOST, PORT), MyUDPHandler) as server:
    #     server.serve_forever()