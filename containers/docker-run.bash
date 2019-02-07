#! /bin/bash

sudo docker rm --force postgis rstats pgadmin4
sudo podman rm --force postgis rstats pgadmin4
sudo docker run --detach --name postgis --hostname postgis --publish 5439:5432 --env-file .env postgis:latest
sudo docker run --detach --name rstats --hostname rstats --publish 8004:8004 --env-file .env rstats:latest
sudo docker run --detach --name pgadmin4 --hostname pgadmin4 --publish 8686:80 --env-file .env docker.io/dpage/pgadmin4:latest
