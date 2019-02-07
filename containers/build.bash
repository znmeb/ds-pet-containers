#! /bin/bash

sudo docker build --tag rstats:latest --file Dockerfile.opencpu .
sudo docker build --tag postgis:latest --file Dockerfile.postgis .
