#!/bin/bash

while (1)
do
	sleep 50
done

mkdir	/home/srcs/wp-data
mkdir	/home/srcs/wp-data/$DOMAIN_NAME
echo TRYING TO COPY
cp -r /home/srcs/wordpress /home/srcs/wp-data/$DOMAIN_NAME/
cp -r /home/srcs/phpMyAdmin /home/srcs/wp-data/$DOMAIN_NAME/
echo COPY DONE
service php-fpm start
echo FPM STARTED
