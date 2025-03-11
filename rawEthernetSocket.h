#include<stdio.h>

#define BUFSIZE 8192

struct RawSocket;
struct BaseReqestHandler;


struct RawSocket{
    int socket;
    char buf[BUFSIZE];                              //パケット用のバッファ(最大は8192バイト)                         buffer for packets (max 8192 bytes)
    char interface[16];             //インターフェースの名前(文字列),インデックス番号を引くのに使う     interface name (string), used to subtract index number
    void (*bind_rawsocket)(struct RawSocket* pthis); //中でbindを行う                   bind the socket
    int (*recv_rawsocket)(struct RawSocket* pthis); //中でrecvする                      receive in
    void (*close_rawsocket)(struct RawSocket* pthis); //中でソケットをcloseする             close the socket
};


struct RawSocket* new_RawSocket(char *interface);

void close_RawSocket(struct RawSocket* pthis);

void bind_RawSocket(struct RawSocket* pthis);

int recv_RawSocket(struct RawSocket* pthis);

