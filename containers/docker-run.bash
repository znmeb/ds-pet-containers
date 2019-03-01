#! /bin/bash

echo "force-removing any old containers"
echo "you can ignore errors when containers don't exist"
sudo podman rm --force postgis pgadmin4 rstats
podman rm --force postgis pgadmin4 rstats
docker rm --force postgis pgadmin4 rstats

echo "creating a fresh Docker network 'dspc'"
docker network rm dspc
docker network create --driver bridge dspc

echo "running containers"
docker run --network dspc --detach --env-file .env \
  --hostname postgis --name postgis --publish 5432:5432 \
  postgis:latest
docker run --network dspc --detach --env-file .env \
  --hostname rstats --name rstats --publish 8004:8004 \
  rstatsp:latest
docker run --network dspc --detach --env-file .env \
  --hostname pgadmin4 --name pgadmin4 --publish 8686:8686 \
  docker.io/dpage/pgadmin4:latest
docker ps
docker exec -u rstats rstats /home/rstats/scripts/is_postgis_there.R
docker exec -it -u postgres pgadmin4 sh -c "PGPASSWORD=\$POSTGRES_PASSWORD psql --host postgis -l"
