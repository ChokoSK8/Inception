#!/bin/bash

#sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf";

chown -R www-data:www-data /var/www/*
chown -R 755 /var/www/*

mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;

cd /var/www/site
wp core install --url=${DOMAIN_NAME} --title=wpData --admin_user=${WP_ADMIN_USERNAME} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --skip-email --allow-root
wp user create ${WP_USER} --user_pass=${WP_USER_PASSWORD} --allow-root

exec "$@"
