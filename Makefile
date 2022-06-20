YML	=	srcs/docker-compose.yml

all: 
	mkdir -p /home/abrun/data/wordpress
	mkdir -p /home/abrun/data/mariadb
	docker-compose -f $(YML) up

relauch:
	docker-compose -f $(YML) up

down:
	docker-compose -f $(YML) down

re: fclean all

delVolume:
	@-rm -rf /home/abrun/data/wordpress
	@-rm -rf /home/abrun/data/mariadb

clean:
	docker-compose -f $(YML) down --rmi all -v

fclean:	clean delVolume

.PHONY: all re down clean fclean
