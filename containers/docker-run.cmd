podman rm --force `podman ps -aq`
docker rm --force `docker ps -aq`
docker network rm dspc
docker network create --driver bridge dspc
docker run --network dspc --detach --name postgis --publish 5439:5432 --env-file .env postgis:latest
docker run --network dspc --detach --name rstats --publish 8004:8004 --env-file .env rstats:latest
docker run --network dspc --detach --name pgadmin4 --publish 8686:80 --env-file .env docker.io/dpage/pgadmin4:latest
docker ps
