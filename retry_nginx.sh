#!/bin/bash

sudo docker stop nginxc
sudo docker rm $(sudo docker ps -a -q)
sudo docker rmi nginxb
make nginx
sudo docker exec -it nginxc bash
