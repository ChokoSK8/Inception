FROM	debian:buster-slim

RUN	apt-get -y update && apt-get -y install wget \ 
	php7.3 \
	php-cli \	
	php-cgi \
	php-mbstring \
	php-fpm \
	php-mysql \
	libnss3-tools

RUN	mkdir /run/php/ ; touch /run/php/php7.3-fpm.sock

COPY	./www.conf /etc/php/7.3/fpm/pool.d

COPY	./script.sh /var/www/

COPY	./wp-config.php /var/www

EXPOSE	9000 3306

ENTRYPOINT	["sh", "/var/www/script.sh"]
