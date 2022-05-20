FROM	debian:buster-slim

RUN	apt-get -y update ; \
	apt-get -y install nginx gettext \
	openssl ssl-cert \
	vim

ENV	DOMAIN_NAME abrun.42.fr

RUN	mkdir -p /home/srcs

COPY	. /home/srcs

RUN	/home/srcs/script.sh

EXPOSE	80 443 9000

STOPSIGNAL	SIGQUIT

CMD	["nginx", "-g", "daemon off;"]
