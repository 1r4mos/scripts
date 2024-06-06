import requests

url = "https://www.google.com.br"

requisicao = requests.get(url)

requisicao._content
requisicao.headers
requisicao.cookies
status = requisicao.status_code

if status == 200:
    print("Conectado com sucesso")
else:
    print("Falha na conexão")

