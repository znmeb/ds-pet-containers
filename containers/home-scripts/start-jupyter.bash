#! /bin/bash

echo "Activating the 'r-tensorflow' environment"
. /home/rstudio/miniconda3/etc/profile.d/conda.sh
conda activate r-tensorflow
echo "Setting notebook password"
jupyter notebook password
echo "Starting notebook - browse to 'localhost:8888'"
jupyter notebook --ip=0.0.0.0 --no-browser
