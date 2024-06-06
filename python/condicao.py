#!/usr/bin/python3

import sys

if(sys.argv<= 2):
    print("USAGE: repeticao.py 192.168.15.1 8080")
else:
    print("Varrendo o host:", sys.argv[1], "na porta", sys.argv[2])
    