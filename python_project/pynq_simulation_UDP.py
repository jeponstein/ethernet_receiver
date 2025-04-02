# needs to both receive, and 
import threading
import socket
import socketserver
import sys
import time

def start_pynq_server():
    PYNQ_HOST, PYNQ_PORT = "localhost", 9997
    # data = b''
    with socketserver.UDPServer( (PYNQ_HOST, PYNQ_PORT) , MyUDPHandler) as server:
        server.serve_forever()

track_amount_received = 0

class MyUDPHandler(socketserver.BaseRequestHandler):
    def handle(self):

        data = self.request[0].strip()

        print(f"{self.client_address[0]} wrote:")

        track_amount_received =+ 1

        

        if track_amount_received > 100:
            start_pynq_client(b"100 packets received")
            track_amount_received = 0


def start_pynq_client(data):
    DT_HOST, PD_PORT = "localhost", 9996

    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.sendto( data , (DT_HOST, PD_PORT) )


if __name__ =="__main__":

    start_pynq_server()
    print(" exiting main function")

