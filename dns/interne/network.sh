#! /bin/sh
#--driver=bridge \
sudo docker network create \
--subnet=172.16.0.0/24 \
--ip-range=172.16.0.0/24 \
--gateway=172.16.0.254 \
intranet

