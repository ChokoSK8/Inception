#!/bin/bash

#mv /home/srcs/abrun.42.fr/abrun.42.fr.conf /etc/nginx/sites-available/
#ln -s /etc/nginx/sites-available/abrun.42.fr.conf /etc/nginx/sites-enabled/abrun.42.fr.conf
cat /home/srcs/abrun.42.fr/abrun.42.fr.conf > /etc/nginx/sites-available/default
mv /home/srcs/abrun.42.fr /var/www/
echo "0.0.0.0	abrun.42.fr wwww.abrun.42.fr" >> /etc/hosts
service nginx restart
