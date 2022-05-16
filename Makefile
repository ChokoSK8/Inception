build:
	sudo docker-compose -f srcs/docker-compose.yml build $(c)

up:
	sudo docker-compose srcs/docker-compose.yml up -d $(c)

start:
	sudo docker-compose -f srcs/docker-compose.yml start $(c)

down:
	sudo docker-compose -f srcs/docker-compose.yml down $(c)

destroy:
	sudo docker-compose -f srcs/docker-compose.yml down -v $(c)

stop:
	sudo docker-compose -f srcs/docker-compose.yml stop $(c)

restart:
	sudo docker-compose -f srcs/docker-compose.yml stop $(c)
	sudo docker-compose -f srcs/docker-compose.yml up -d $(c)

del:
	sudo docker rmi nginxb
	sudo docker rmi wordpressb

img:
	sudo docker build -t nginxb srcs/requirements/nginx
	sudo docker build -t worpressb srcs/requirements/wordpress

.PHONY: help build up start down destroy stop restart logs logs-api ps login-timescale login-api db-shell
