#include <stdio.h>
#include <stdlib.h>
#include <linux/if_ether.h>

#include "rawEthernetSocket.h"
#include "ethernet.h"

void writeToFile(char* content)
{
    FILE *fptr; 

    fptr = fopen("filename.txt", "w");

    fprintf(fptr, content);

    fclose(fptr);
}

int start_server(char* interface, char* received_packet)
{
    struct RawSocket* rawsocket = new_RawSocket(interface);
    int len;

    rawsocket->bind_rawsocket(rawsocket);

    while(1){

        int len = rawsocket->recv_rawsocket(rawsocket);
        struct ethhdr_frame *data = (struct ethhdr_frame*)(rawsocket->buf);
        fflush(stdout);

        //if received frame contains data, return to main function. 
        if(len > 0){

            printf("src: ");
            print_macaddr(data->h_source);
            printf(", ");
            printf("dst: ");
            print_macaddr(data->h_dest);
            printf(", ");
            printf("type: ");
            printf("%02x", (uint16_t)data->h_proto);
            printf(", ");
            printf("payload: ");
            printf("%s", data->payload);
            printf("\n");

            received_packet = data->payload;

            printf("%s \n", received_packet);

            return(1);

        }
    }


}


int main(int argc, char *argv[]) //argc = no of strings used to call the program, including the program name. argv contains
{
    if(argc != 2){
        printf("Invalid usage of script. Usage: .\\tryout <interface>  ");
        exit(0);
    }

    char* if_name = argv[1];

    char* data = "";

    start_server(if_name, data);

    printf("%s", data);

    printf("Data should have been printed by now \n");

    writeToFile(data);
    return 0;
}