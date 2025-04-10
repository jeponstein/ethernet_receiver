import socketserver

class MyUDPHandler(socketserver.BaseRequestHandler):

    def handle(self):

        data = self.request[0].strip()
        socket = self.request[1]


        print(f"{self.client_address[0]} wrote:")

        print(data)
        
        # socket.sendto(data, self.client_address)

if __name__ == "__main__":

    # HOST, PORT = "169.254.113.239", 9000

    # HOST, PORT = "192.168.0.101", 9000
    HOST, PORT = "127.0.0.1", 9000


    data = b''

    with socketserver.UDPServer((HOST, PORT), MyUDPHandler) as server:
        server.serve_forever()