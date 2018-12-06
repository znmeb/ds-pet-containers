#! /bin/bash

cd /usr/local/src
export RSTUDIO_SERVER_VERSION=1.2.1163
wget -nc -q https://s3.amazonaws.com/rstudio-ide-build/server/debian9/x86_64/rstudio-server-${RSTUDIO_SERVER_VERSION}-amd64.deb
gdebi -n rstudio-server-${RSTUDIO_SERVER_VERSION}-amd64.deb
