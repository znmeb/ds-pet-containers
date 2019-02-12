docker rm --force postgis pgadmin4 rstats
docker run --network host --detach --env-file .env --name postgis --publish 5432:5432 postgis:latest
docker run --network host --detach --env-file .env --name rstats --publish 8004:8004 rstats:latest
docker run --network host --detach --env-file .env --name pgadmin4 --publish 8686:8686 docker.io/dpage/pgadmin4:latest
docker ps
docker exec -u rstats rstats /home/rstats/scripts/is_postgis_there.R
docker exec -it -u postgres pgadmin4 sh -c 'PGPASSWORD=$POSTGRES_PASSWORD psql --host localhost -l'
