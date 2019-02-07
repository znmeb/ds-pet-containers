#! /bin/bash

sudo podman build --tag rstats:latest --file Dockerfile.opencpu .
sudo podman build --tag rstatsp:latest --file Dockerfile.opencpu-preview .
sudo podman build --tag postgis:latest --file Dockerfile.postgis .
