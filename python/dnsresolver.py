import sys,socket

host = sys.argv[1]

print(host,"--->", socket.gethostname(host))