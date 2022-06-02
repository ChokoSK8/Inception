#!/bin/bash

mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;

if [ ! -f /var/www/site/scriptDone ];
then
	chown -R www-data:www-data /var/www/*
	chown -R 755 /var/www/*

	cd /var/www/site
	wp core install --url=${DOMAIN_NAME} --title=wpData --admin_user=${WP_ADMIN_USERNAME} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --skip-email --allow-root
	wp user create ${WP_USER} ${WP_USER_EMAIL} --role="editor" --user_pass=${WP_USER_PASSWORD} --allow-root
	
	touch /var/www/site/scriptDone
fi

exec "$@"
