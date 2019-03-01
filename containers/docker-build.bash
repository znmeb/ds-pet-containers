#! /bin/bash

docker build --tag rstats:latest --file Dockerfile.opencpu .
docker build --tag rstatsp:latest --file Dockerfile.opencpu-preview .
docker build --tag postgis:latest --file Dockerfile.postgis .
docker pull docker.io/dpage/pgadmin4:latest
docker images
