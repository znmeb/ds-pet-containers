#! /bin/bash

sudo podman rm --force postgis pgadmin4 rstats
docker rm --force postgis pgadmin4 rstats
sudo podman run --network host --detach --env-file .env \
  --name postgis \
  --publish 5432:5432 \
  postgis:latest
sudo podman run --network host --detach --env-file .env \
  --name rstats \
  --publish 8004:8004 \
  rstatsp:latest
sudo podman run --network host --detach --env-file .env \
  --name pgadmin4 \
  --publish 8686:8686 \
  docker.io/dpage/pgadmin4:latest
sudo podman ps
sudo podman exec -u rstats rstats /home/rstats/scripts/is_postgis_there.R
sudo podman exec -it -u postgres pgadmin4 sh -c 'PGPASSWORD=$POSTGRES_PASSWORD psql --host postgis -l'
