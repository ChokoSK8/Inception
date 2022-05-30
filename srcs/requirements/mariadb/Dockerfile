FROM	debian:buster-slim

RUN	apt-get -y update && apt-get -y install mariadb-server \
	vim gettext

RUN	mkdir -p /home/srcs ;

COPY	./50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY	. /home/srcs

EXPOSE	3306

RUN	service mysql start && mysql < /home/srcs/initMysqlDB.sql && rm -rf /home/srcs/initMysqlDB.sql ;

#ENTRYPOINT	["bash", "/home/srcs/script.sh"]

CMD	["mysqld"]
