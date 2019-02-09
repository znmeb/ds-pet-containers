#! /bin/bash

sudo docker rm --force postgis rstats pgadmin4
sudo podman rm --force postgis rstats pgadmin4
#
# podman doesn't have "networks" in the same sense as "docker network". It comes with a single
# default CNI network: 10.88.0.0/16.
#
# So for the other two containers to refer to the "postgis" container by name, we have to party
# like it's 1982 - assign it a static IP address and create an "/etc/hosts" file pointing to it
# in the other two containers. See "man podman-run" for details.
sudo podman run --detach --ip "10.88.64.128" --publish 5439:5432 --env-file .env \
  localhost/postgis:latest
sudo podman run --detach --add-host "postgis:10.88.64.128" --publish 8004:8004 --env-file .env \
  localhost/rstats:latest
sudo podman run --detach --add-host "postgis:10.88.64.128" --publish 8686:80 --env-file .env \
  docker.io/dpage/pgadmin4:latest
sudo podman ps
