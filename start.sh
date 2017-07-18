#!/bin/bash
docker rm nodeapp
docker build -t nodeapp .
docker run -d -p 8000:8000 --name nodeapp -it nodeapp
