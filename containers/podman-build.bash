#! /bin/bash

podman build --tag localhost/rstats:latest --file Dockerfile.opencpu .
podman build --tag localhost/rstatsp:latest --file Dockerfile.opencpu-preview .
podman build --tag localhost/postgis:latest --file Dockerfile.postgis .
podman images
