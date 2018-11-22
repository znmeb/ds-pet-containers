#! /bin/bash

echo "Installing hosting packages"
sudo rpm-ostree install --allow-inactive \
  chromium \
  docker \
  docker-compose \
  git-lfs \
  kernel-tools \
  powertop \
  python3-speedtest-cli \
  vim-enhanced
echo "Adding aliases to '~/.bashrc'"
cat bashrc >> ~/.bashrc
echo "Now reboot with 'sudo systemctl reboot'"
