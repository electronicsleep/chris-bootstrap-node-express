#!/bin/bash
docker rm nodeapp
docker build -t nodeapp .
CID=$(docker run -d -p 8000:8000 --name nodeapp -i nodeapp)
echo "CID: $CID"

sleep 5

# Example: Run Tests
OUTPUT=$(curl localhost:8000)

if [[ $OUTPUT == *"Chris"* ]];then
 echo "TEST: output ok: found string"
 ERROR=0 
else
 echo "TEST: output not ok: did not find string"
 ERROR=1
fi

sleep 5

# Docker stop 
docker stop $CID

exit $ER0RR
