#! /bin/bash

. "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate r-tensorflow
echo "Set a notebook password"
jupyter notebook password
echo "Browse to 'http://loaclhost:8888'"
jupyter notebook --ip=0.0.0.0 --no-browser
