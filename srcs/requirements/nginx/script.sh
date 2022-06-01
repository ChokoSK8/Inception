#!/bin/bash

if [ ! -f /etc/ssl/certs/nginx.crt ];
then
openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/ssl/private/abrun.key -out /etc/ssl/certs/abrun.crt -subj "/C=FR/ST=Paris/L=IDF/O=42School/CN=abrun.42.fr";
fi
exec "$@"
