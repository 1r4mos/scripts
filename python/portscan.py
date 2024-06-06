import sys, socket
for port in range(1,65535):
    meusocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    if meusocket.connect((sys.argv[1], port)) == 0:
        print(f"Porta {port} aberta")
        meusocket.close()