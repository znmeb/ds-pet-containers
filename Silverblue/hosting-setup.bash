#! /bin/bash

echo "Installing hosting packages"
sudo rpm-ostree install --allow-inactive \
  moby-engine \
  docker-compose \
  git-lfs \
  kernel-tools \
  powertop \
  python3-speedtest-cli \
  vim-enhanced
echo "Now reboot with 'sudo systemctl reboot'"
