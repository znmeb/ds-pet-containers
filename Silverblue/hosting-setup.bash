#! /bin/bash

echo "Installing hosting packages - reboot when completed!"
sudo rpm-ostree install --allow-inactive \
  docker \
  docker-compose \
  git-lfs \
  kernel-tools \
  powertop \
  python3-speedtest-cli \
  vim-enhanced
cat bashrc >> ~/.bashrc
