#!/bin/bash
docker rm nodeapp
docker build -t nodeapp .
docker run -t -p 8000:8000 --name nodeapp -it nodeapp
