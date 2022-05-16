FROM	debian:buster-slim

RUN	apt-get -y update && apt-get -y install wget \ 
	php \
	php-cli \	
	php-cgi \
	php-mbstring \
	php-fpm \
	php-mysql \
	libnss3-tools

COPY	. /home/srcs

EXPOSE	9000 3306

CMD	["bash", "/home/srcs/script.sh"]
