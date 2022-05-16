FROM	debian:buster-slim

RUN	apt-get -y update && apt-get -y install mariadb-server

RUN	mkdir -p /home/srcs

COPY	. /home/srcs

EXPOSE	3306

CMD	["bash", "/home/srcs/script.sh"]
