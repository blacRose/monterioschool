#!/usr/bin/env bash

apt-get update
apt-get install -y nginx
# TODO: set up nginx config

cp -f /vagrant/.config/nginx/default /etc/nginx/sites-available/default
ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
rm -r /usr/share/nginx/www
ln -s /vagrant /usr/share/nginx/www
/etc/init.d/nginx start
