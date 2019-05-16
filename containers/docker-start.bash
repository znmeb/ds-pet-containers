#! /bin/bash

echo "starting containers"
sudo docker start postgis
sudo docker start rstats
sudo docker start pgadmin4
sudo docker ps --all
