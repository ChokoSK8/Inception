FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server

EXPOSE 3306

RUN mkdir -p /home/srcs

COPY ./* /home/srcs/

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN service mysql start && mysql < /home/srcs/initial_db.sql ;

CMD ["mysqld"]
