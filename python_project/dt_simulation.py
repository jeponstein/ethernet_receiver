# needs to both receive, and 
import threading
import socket
import socketserver
import sys
import time

def start_dt_server():
    DT_HOST, PD_PORT = "localhost", 9996

    # data = b''
    with socketserver.UDPServer( (DT_HOST, PD_PORT) , MyUDPHandler) as server:
        server.serve_forever()


class MyUDPHandler(socketserver.BaseRequestHandler):
    def handle(self):

        data = self.request[0].strip()

        print(f"{self.client_address[0]} wrote:")

        print(data)
        time.sleep(1)
        # start_dt_client(data)

def start_dt_client(data):
    PYNQ_HOST, PYNQ_PORT = "localhost", 9997
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    while True:
        sock.sendto( data , (PYNQ_HOST, PYNQ_PORT) )

if __name__ =="__main__":

    t1 = threading.Thread(target=start_dt_client, args=(b'message',) )
    t2 = threading.Thread(target=start_dt_server)

    t1.start()
    t2.start()

    t1.join()
    t2.join()

    print(" exiting main function")