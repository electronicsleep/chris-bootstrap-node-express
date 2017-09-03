#!/bin/bash
docker rm nodeapp
docker build -t nodeapp .
CID=$(docker run -d -p 8000:8000 --name nodeapp -i nodeapp)
echo "CID: $CID"

sleep 1

# Example: Run Tests
OUTPUT=$(curl localhost:8000)

CHECK="body"

if [[ $OUTPUT == *"$CHECK"* ]];then
 echo "TEST: ok found string: $CHECK"
 ERROR=0 
else
 echo "TEST: error did not find string: $CHECK"
 ERROR=1
fi

# Docker stop 
docker stop $CID

exit $ERROR
