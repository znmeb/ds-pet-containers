# The `silver-potato` Project - M. Edward (Ed) Borasky

## Images
* postgis: PostgreSQL 11 + PostGIS 2.5 + pgRouting 2.6, all from [PostgreSQL Global Development Group](https://wiki.postgresql.org/wiki/Apt)
* pgadmin4: minor extensions of [official pgAdmin4 image](https://hub.docker.com/r/dpage/pgadmin4/)
* rstats: [rocker/tidyverse](https://hub.docker.com/r/rocker/tidyverse) + [Miniconda3](https://docs.conda.io/en/latest/miniconda.html)

## Quick start
1. Clone <https://github.com/znmeb/silver-potato.git> and `cd` into `containers`.
2. Copy `sample.env` to `.env`, then change all the passwords in `.env'.
3. To run from Docker Hub images, type `docker-compose up -d`. This will download the images if you don't have them. Then it will create the containers and attach them to the host network `localhost`.
    * postgis: the service is listening on ***localhost:5439***, not the PostgreSQL default, 5432. This avoids port conflicts with any PostgreSQL services you may already have running.
    * pgadmin4: the service is listening on `localhost:8686`. First, log in with the email address and password you set for `pgadmin4` in `.env`. Then, click on the `Servers` tab in the tree on the left panel. It will ask you for the `postgres` password you set in `.env`. Then it will connect to the `postgis` container.
    * rstats: the service is listening on `localhost:8787`. Log in as `rstudio` with the password you set in `.env`.
4. To stop the services, type `docker-compose stop`. To start them back up again, type `docker-compose start`.
