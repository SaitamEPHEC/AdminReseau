#! /bin/sh
docker network create \
--driver=bridge \
--subnet=172.16.0.0/24 \
--ip-range=172.16.0.0/24 \
--gateway=172.16.0.254/24 \
intranet
