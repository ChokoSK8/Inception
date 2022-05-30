FROM	debian:buster-slim

RUN	apt-get -y update ; \
	apt-get -y install nginx gettext \
	openssl ssl-cert \
	vim

ENV	DOMAIN_NAME abrun.42.fr

RUN	mkdir -p /home/srcs

COPY	. /home/srcs

EXPOSE	443

STOPSIGNAL	SIGQUIT

ENTRYPOINT	["/home/srcs/script.sh"]

CMD	["nginx", "-g", "daemon off;"]
