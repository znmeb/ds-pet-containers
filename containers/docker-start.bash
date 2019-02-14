#! /bin/bash

echo "startping containers"
docker start postgis
docker start rstats
docker start pgadmin4
docker ps --all
