#!/bin/bash
docker rm nodeapp
docker build -t nodeapp .
ID=$(docker run -d -p 8000:8000 --name nodeapp -i nodeapp)
echo "ID: $ID"

sleep 1

# Example: Run Tests
OUTPUT=$(curl -m 10 --connect-timeout 5 localhost:8000)

CHECK="body"

if [[ $OUTPUT == *"$CHECK"* ]];then
 echo "TEST: ok found string: $CHECK"
 ERROR=0 
else
 echo "TEST: error did not find string: $CHECK"
 ERROR=1
fi

# Docker stop 
docker stop $ID

exit $ERROR
