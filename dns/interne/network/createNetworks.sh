#! /bin/sh

sudo docker network create \
--driver=bridge \
--subnet=172.16.0.0/24 \
--ip-range=172.16.0.0/24 \
--gateway=172.16.0.254 \
intranet
sudo docker network create \
--driver=bridge \
--subnet=172.16.2.0/24 \
--ip-range=172.16.2.0/24 \
--gateway=172.16.2.254 \
administration
sudo docker network create \
--driver=bridge \
--subnet=172.16.3.0/24 \
--ip-range=172.16.3.0/24 \
--gateway=172.16.3.254 \
direction
sudo docker network create \
--driver=bridge \
--subnet=172.16.4.0/24 \
--ip-range=172.16.4.0/24 \
--gateway=172.16.4.254 \
atelier
