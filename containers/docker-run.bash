#! /bin/bash

sudo podman rm --force `sudo podman ps -aq`
sudo docker rm --force `sudo docker ps -aq`
sudo docker network rm dspc
sudo docker network create --driver bridge dspc
sudo docker run --network dspc --detach --name postgis --publish 5439:5432 --env-file .env \
  postgis:latest
sudo docker run --network dspc --detach --name rstats --publish 8004:8004 --env-file .env \
  rstats:latest
sudo docker run --network dspc --detach --name pgadmin4 --publish 8686:80 --env-file .env \
  docker.io/dpage/pgadmin4:latest
sudo docker ps
