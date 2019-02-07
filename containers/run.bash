#! /bin/bash

sudo docker run --detach --name postgis --env-file .env postgis:latest
sudo docker run --detach --name rstats --publish 8787:8787 --link postgis --env-file .env rstats:latest
sudo docker run --detach --name pgadmin4 --publish 8686:80 --link postgis --env-file .env docker.io/dpage/pgadmin4:latest
