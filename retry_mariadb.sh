#!/bin/bash

sudo docker stop mariadbc
sudo docker rm $(sudo docker ps -a -q)
sudo docker rmi mariadbb
make mariadb
sudo docker exec -it mariadbc bash
