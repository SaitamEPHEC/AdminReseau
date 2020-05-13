#! /bin/sh
sudo docker network connect intranet administration --ip 172.16.0.128
sudo docker network connect intranet direction --ip 172.16.0.129
sudo docker network connect intranet atelier --ip 172.16.0.130
