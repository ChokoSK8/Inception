all: 
	mkdir -p /home/abrun/data/wordpress
	mkdir -p /home/abrun/data/mariadb
	docker-compose -f ./srcs/docker-compose.yml up

relauch:
	docker-compose -f ./srcs/docker-compose.yml up

down:
	docker-compose -f ./srcs/docker-compose.yml down

re: clean all

delVolume:
	@-rm -rf /home/abrun/data/wordpress
	@-rm -rf /home/abrun/data/mariadb

clean:
	@-docker stop $$(docker ps -a -q)
	@-docker rm -f $$(docker ps -a -q)
	@-docker rmi -f $$(docker images -a -q)
	@-docker network rm -f $$(docker network ls -q)
	@-docker volume rm -f $$(docker volume ls -q)
	@-docker system prune -y
	@-rm -rf /home/abrun/data/wordpress
	@-rm -rf /home/abrun/data/mariadb

.PHONY: all re down clean
