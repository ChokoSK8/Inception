FROM	debian:buster

RUN	apt-get -y update ; \
	apt-get -y install nginx \
	openssl ssl-cert \
	vim

RUN	mkdir -p /home/srcs

COPY	. /home/srcs

EXPOSE	443

ENTRYPOINT	exec ./home/srcs/script.sh
