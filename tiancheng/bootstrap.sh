#!/bin/bash
apt-get update
apt-get install -y nginx
if ! [ -L /var/www ]; then
  rm -rf /var/www/html
  ln -fs /vagrant /var/www/html
fi
