#! /bin/bash

sudo docker build --tag rstats:latest --file Dockerfile.rocker .
sudo docker build --tag postgis:latest --file Dockerfile.postgis .
sudo docker pull docker.io/dpage/pgadmin4:latest
sudo docker images
