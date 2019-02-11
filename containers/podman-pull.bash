#! /bin/bash

sudo podman pull docker.io/library/postgres:10
sudo podman pull docker.io/dpage/pgadmin4:latest
sudo podman pull docker.io/opencpu/rstudio:latest
sudo podman images
