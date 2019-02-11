#! /bin/bash

sudo podman build --tag localhost/rstats:latest --file Dockerfile.opencpu .
sudo podman build --tag localhost/rstatsp:latest --file Dockerfile.opencpu-preview .
sudo podman build --tag localhost/postgis:latest --file Dockerfile.postgis .
sudo podman images
