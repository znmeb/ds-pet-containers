#! /bin/bash

echo "stopping containers"
sudo docker stop postgis
sudo docker stop rstats
sudo docker stop pgadmin4
sudo docker ps --all
