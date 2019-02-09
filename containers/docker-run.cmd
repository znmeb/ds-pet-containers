podman rm --force `podman ps -aq`
docker rm --force `docker ps -aq`
docker network rm dspc
docker network create --driver bridge dspc
docker run --network dspc --detach --env-file .env --hostname postgis --name postgis --publish 5439:5432 postgis:latest
docker run --network dspc --detach --env-file .env --hostname rstats --name rstats --publish 8004:8004 rstats:latest
docker run --network dspc --detach --env-file .env --hostname pgadmin4 --name pgadmin4 --publish 8686:80 docker.io/dpage/pgadmin4:latest
docker ps
