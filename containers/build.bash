#! /bin/bash

sudo docker build --tag rstats:latest --file Dockerfile.rstats .
sudo docker build --tag postgis:latest --file Dockerfile.postgis .
