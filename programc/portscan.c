#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>

int main(int argc,char *argv[]){

        int meusocket;
        int conecta;

        int porta;
        char *destino;
        destino = argv[1];

        struct sockaddr_in alvo;

        for(porta = 0; porta<65535;porta++){
        meusocket = socket(AF_INET, SOCK_STREAM,0);
        alvo.sin_family = AF_INET;
        alvo.sin_port = htons(porta);
        alvo.sin_addr.s_addr = inet_addr(destino);

        conecta = connect(meusocket, (struct sockaddr*)&alvo, sizeof alvo);

        if(conecta == 0){
                printf("[+] Porta %d - status [aberta] \n", porta);
                close(meusocket);
                close(conecta);
        }else{
                close(meusocket);
                close(conecta);
        }
        }

return 0;
}