docker rm --force postgis pgadmin4 rstats
docker network rm dspc
docker network create --driver bridge dspc
docker run --network dspc --detach --env-file .env --hostname postgis --name postgis --publish 5439:5432 postgis:latest
docker run --network dspc --detach --env-file .env --hostname rstats --name rstats --publish 8004:8004 rstats:latest
docker run --network dspc --detach --env-file .env --hostname pgadmin4 --name pgadmin4 --publish 8686:80 docker.io/dpage/pgadmin4:latest
docker ps
docker exec -u rstats rstats /home/rstats/scripts/is_postgis_there.R
docker exec -it -u postgres pgadmin4 sh -c 'PGPASSWORD=$POSTGRES_PASSWORD psql --host postgis -l'
