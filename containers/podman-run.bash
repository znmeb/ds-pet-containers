#! /bin/bash

echo "force-removing containers - you can ignore errors when containers don't exist"
podman rm --force postgis pgadmin4 rstats
docker rm --force postgis pgadmin4 rstats

# podman doesn't have "networks" in the same sense as "docker network". It comes with a single
# default CNI network: 10.88.0.0/16.

# So for the other two containers to refer to the "postgis" container by name, we have to party
# like it's 1982 - assign it a static IP address and create an "/etc/hosts" file pointing to it
# in the other two containers. See "man podman-run" for details.

echo ""
echo "creating a fresh pod"
podman pod rm dspc
podman pod create --infra=false --name=dspc
podman pod ls

echo ""
echo "running the images in containers"
podman run --network host --detach --env-file=.env --pod=dspc \
  --name=postgis \
  localhost/postgis:latest
podman run --network host --detach --env-file .env --pod dspc \
  --name=rstats \
  localhost/rstatsp:latest
podman run --network host --detach --env-file .env --pod dspc \
  --name=pgadmin4 \
  docker.io/dpage/pgadmin4:latest
podman pod ls
podman ps

echo ""
echo "testing PostGIS connections"
podman exec -u rstats rstats /home/rstats/scripts/is_postgis_there.R
podman exec -it -u postgres pgadmin4 sh -c "PGPASSWORD=\$POSTGRES_PASSWORD psql --host postgis -l"
