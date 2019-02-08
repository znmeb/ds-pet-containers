#! /bin/bash

sudo docker rm --force postgis rstats pgadmin4
sudo podman rm --force postgis rstats pgadmin4
sudo podman run --detach --name postgis --hostname postgis --publish 5439:5432 --env-file .env \
  localhost/postgis:latest
sudo podman run --detach --name rstats --hostname rstats --publish 8004:8004 --env-file .env \
  localhost/rstats:latest
sudo podman run --detach --name pgadmin4 --hostname pgadmin4 --publish 8686:80 --env-file .env \
  docker.io/dpage/pgadmin4:latest
sudo podman ps
