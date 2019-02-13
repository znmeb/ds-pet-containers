#! /bin/bash

podman build --tag rstats:latest --file Dockerfile.opencpu .
podman build --tag rstatsp:latest --file Dockerfile.opencpu-preview .
podman build --tag postgis:latest --file Dockerfile.postgis .
podman images