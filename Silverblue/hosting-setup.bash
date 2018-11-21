#! /bin/bash

sudo rpm-ostree install --allow-inactive \
  cockpit \
  cockpit-dashboard \
  cockpit-doc \
  cockpit-docker \
  cockpit-networkmanager \
  cockpit-ostree \
  cockpit-packagekit \
  cockpit-selinux \
  docker \
  docker-compose
