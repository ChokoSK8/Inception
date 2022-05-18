FROM	debian:buster-slim

RUN	apt-get -y update && apt-get -y install mariadb-server \
	vim gettext

RUN	mkdir -p /home/srcs

COPY	. /home/srcs

EXPOSE	3306

RUN	cd /home/srcs ;

#CMD	["bash", "/home/srcs/script.sh"]

CMD	["mysqld_safe"]
