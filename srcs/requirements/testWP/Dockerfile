FROM debian:buster

RUN apt-get update
RUN apt-get -y install php7.3 php-mysqli php-fpm wget curl

RUN	mkdir -p /var/www/site && mv ./wp-config.php /var/www/site && cd /var/www/site ; \
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar ; \
	chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp ; \
	wp core download --allow-root ; \
  wp core install --url=abrun.42.fr --title="Hey You" --admin_user=abrun --admin_password=abpass --admin_email=abrun@student.42.fr --skip-email --allow-root
