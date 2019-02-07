#! /bin/bash

sudo podman run --detach --name postgis --publish 5439:5432 --env-file .env postgis:latest
sudo podman run --detach --name rstats --publish 8787:8787 --env-file .env rstats:latest
sudo podman run --detach --name pgadmin4 --publish 8686:80 --env-file .env docker.io/dpage/pgadmin4:latest
