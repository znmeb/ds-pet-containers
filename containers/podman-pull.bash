#! /bin/bash

podman pull docker.io/library/postgres:10
podman pull docker.io/dpage/pgadmin4:latest
podman pull docker.io/opencpu/rstudio:latest
podman images
