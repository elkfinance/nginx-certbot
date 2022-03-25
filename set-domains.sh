#!/bin/bash

#usage ./set-domains <domain> <destination_port>

sudo sed -i "s/DOMAIN/$1.elk.finance/g" data/nginx/app.conf
sudo sed -i "s/DOMAIN/$1.elk.finance/g" init-letsencrypt.sh
sudo sed -i "s/DESTINATION/127.0.0.1:$2/g" data/nginx/app.conf
