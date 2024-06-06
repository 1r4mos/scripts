#!/bin/bash

if [$1 == ""]
then
echo "SCAN NETWORK - GYIU"
echo "Usage: $0 [NETWORK]"

else
echo "SCAN NETWORK - GYIU"
for ip in {1..254};
do
ping3 -S -p 80 -c 1 $1.$ip 2> /dev/null" | grep "flags=SA"; 
done
fi



