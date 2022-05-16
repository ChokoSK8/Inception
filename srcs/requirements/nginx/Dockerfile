FROM	debian:buster-slim

RUN	apt-get -y update ; \
	apt-get -y install nginx \
	openssl ssl-cert \
	vim

RUN	mkdir -p /home/srcs

COPY	. /home/srcs

EXPOSE	443 9000

CMD	["bash", "/home/srcs/script.sh"]
