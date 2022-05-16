#!/bin/bash

cp -r wordpress /var/www/abrun.42.fr/
cp -r phpMyAdmin /var/www/abrun.42.fr/

service php7.3-fpm start
