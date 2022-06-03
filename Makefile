all: 
	@if [ ! -d "/home/abrun/data" ]; then \
		mkdir -p /home/abrun/data/wordpress;\
		mkdir -p /home/abrun/data/mariadb;\
	fi
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
	@if [ $($(docker ps -a -q) | wc -l) ]; then \
		docker stop $$(docker ps -a -q); \
		docker rm -f $$(docker ps -a -q); \
	fi
	@if [ $($(docker images -a -q | wc -l)) ]; then \
		docker rmi -f $$(docker images -a -q); \
	fi
	@if [ $($(docker network ls -q | wc -l)) ]; then \
		docker network rm -f $$(docker network ls -q); \
	fi
	@if [ $($(docker volume ls -q | wc -l)) ]; then \
		docker volume rm -f $$(docker volume ls -q); \
	fi
	@if [ -d "/home/abrun/data" ]; then \
		rm -rf /home/abrun/data; \
	fi

.PHONY: all re down clean
