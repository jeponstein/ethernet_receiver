all: tryout.c

RawEthernetSocket.o: rawEthernetSocket.c
	gcc -c rawEthernetSocket.c

ethernet.o: ethernet.c
	gcc -c ethernet.c

tryout.o: tryout.c
	gcc -c tryout.c

tryout: tryout.o rawEthernetSocket.o ethernet.o
	gcc -o tryout tryout.o rawEthernetSocket.o ethernet.o
	
clean:
	rm *.o tryout
