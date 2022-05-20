FROM	debian:buster-slim

RUN	apt-get -y update && apt-get -y install wget \ 
	php \
	php-cli \	
	php-cgi \
	php-mbstring \
	php-fpm \
	php-mysql \
	libnss3-tools

RUN	mkdir /run/php/ ; touch /run/php/php7.3-fpm.sock

COPY	. /home/srcs

EXPOSE	9000 3306

ENTRYPOINT	["sh", "/home/srcs/script.sh"]
