import socketserver

class MyTCPHandler(socketserver.BaseRequestHandler):

    def handle(self):

        # pieces will be used to append the received data. the b means that the string '' is converted to bytes.
        pieces = [b'']
        total = 0
        i=0
        #check if the last received piece of data was not a newline char (end of message) & keep amount of data less then 10 000 bytes
        while b'\n' not in pieces[-1] and total < 10_000:

            pieces.append(self.request.recv(2000))
            total += len(pieces[-1])
            self.request.sendall( i.to_bytes(8) )
            i=+1
            
        self.data = b''.join(pieces)
        print(f"Received from {self.client_address[0]}:")
        print(self.data)
        
        # f = open("imageReceived_ALT.jpeg", "wb")
        f = open("test_rx_alt.txt", "xb")
        f.write(self.data)
        f.close()

if __name__ == "__main__":
    HOST, PORT = "localhost", 9998
    # HOST, PORT = "10.1.2.3", 9998   

    # Create the server, binding to localhost on port 9998
    with socketserver.TCPServer((HOST, PORT), MyTCPHandler) as server:
        # Activate the server; this will keep running until the program is interrupted
        server.serve_forever()