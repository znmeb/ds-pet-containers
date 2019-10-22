#! /bin/bash

sudo curl --output /usr/share/keyrings/apache-arrow-keyring.gpg \
  https://dl.bintray.com/apache/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/apache-arrow-keyring.gpg
sudo tee /etc/apt/sources.list.d/apache-arrow.list <<APT_LINE
deb [arch=amd64 signed-by=/usr/share/keyrings/apache-arrow-keyring.gpg] https://dl.bintray.com/apache/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/ $(lsb_release --codename --short) main
deb-src [signed-by=/usr/share/keyrings/apache-arrow-keyring.gpg] https://dl.bintray.com/apache/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/ $(lsb_release --codename --short) main
APT_LINE
curl https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo tee /etc/apt/sources.list.d/llvm.list <<APT_LINE
deb http://apt.llvm.org/$(lsb_release --codename --short)/ llvm-toolchain-$(lsb_release --codename --short)-7 main
deb-src http://apt.llvm.org/$(lsb_release --codename --short)/ llvm-toolchain-$(lsb_release --codename --short)-7 main
APT_LINE
sudo apt-get update -y
sudo apt-get install -y -V libarrow-dev # For C++
sudo apt-get install -y -V libarrow-glib-dev # For GLib (C)
sudo apt-get install -y -V libarrow-flight-dev # For Flight C++
sudo apt-get install -y -V libplasma-dev # For Plasma C++
sudo apt-get install -y -V libplasma-glib-dev # For Plasma GLib (C)
sudo apt-get install -y -V libgandiva-dev # For Gandiva C++
sudo apt-get install -y -V libgandiva-glib-dev # For Gandiva GLib (C)
sudo apt-get install -y -V libparquet-dev # For Apache Parquet C++
sudo apt-get install -y -V libparquet-glib-dev # For Apache Parquet GLib (C)
R -e 'install.packages("arrow")'
