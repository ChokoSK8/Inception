#!/bin/bash

mkdir	/home/wp-data/$DOMAIN_NAME
cp -r /home/srcs/wpDir/* /home/wp-data/$DOMAIN_NAME/
./usr/sbin/php-fpm7.3 -F
