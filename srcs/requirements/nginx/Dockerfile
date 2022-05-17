FROM	debian:buster-slim

RUN	apt-get -y update ; \
	apt-get -y install nginx gettext \
	openssl ssl-cert \
	vim

RUN	mkdir -p /home/srcs

COPY	. /home/srcs

EXPOSE	443 9000

STOPSIGNAL	SIGQUIT

ENTRYPOINT	["bash", "/home/srcs/script.sh"]

CMD ["nginx", "-g", "daemon off;"]
