#!/bin/bash

# Função para exibir mensagens de uso
print_usage() {
    echo "Uso: $0 [-d domínio][-w wordlist]"
    echo "Opções:"
    echo "  -d, --domínio       Domínio pesquisado"
    echo "  -w, --wordlist     Arquivo contendo a lista de itens"
    exit 1
}

# Verifica se o número de argumentos é válido
if [ $# -eq 0 ]; then
    print_usage
fi

# Configuração das opções
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -d|--dominio)
            DOMAIN="$2"
            shift
            shift
            ;;
        -w|--palavra)
            WORD="$2"
            shift
            shift
            ;;
        *)
            print_usage
            ;;
    esac
done

# Verifica se os parametros foram fornecidos
if [ -z "$DOMAIN" ] || [ -z "$WORD" ]; then
    echo "Erro: Ambos os parâmetros -d e -w devem ser fornecidos."
    print_usage
fi

# Verifica se o arquivo existe
if [ ! -f "$WORD" ]; then
    echo "Erro: O arquivo '$WORD' não existe."
    exit 1
fi



# Loop para ler cada linha do arquivo e colocá-la em uma variável colocando no comando host após isso.
for line in $(cat "$WORD"); do

    host $line.$DOMAIN | egrep -v "NXDOMAIN" | grep -v "REFUSED"
done