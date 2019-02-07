#! /bin/bash

sudo podman build --tag rstats:latest --file Dockerfile.rstats .
sudo podman build --tag postgis:latest --file Dockerfile.postgis .
