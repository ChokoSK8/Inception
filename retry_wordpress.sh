#!/bin/bash

sudo docker stop wordpressc
sudo docker rm $(sudo docker ps -a -q)
sudo docker rmi wordpressb
make wordpress
sudo docker exec -it wordpressc bash
