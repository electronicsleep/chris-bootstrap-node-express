#!/bin/bash
docker rm node-route
docker rm nodeapp
docker build -t nodeapp .
docker run -p 8080:8080 --name nodeapp -i -t nodeapp
