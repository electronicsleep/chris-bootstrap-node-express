#!/bin/bash
docker rm node-route
docker rm nodeapp
docker build -t nodeapp .
docker run -p 8000:8000 --name nodeapp -i -t nodeapp
