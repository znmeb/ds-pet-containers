#! /bin/bash

echo "stopping containers"
docker stop postgis
docker stop rstats
docker stop pgadmin4
docker ps --all
