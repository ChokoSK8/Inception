#!/bin/bash

#-----------CERTIFICATE-----------\\
echo "Generating SSL/TLS certificate"
openssl genrsa -out testCA.key 2048
openssl req -x509 -new -nodes -key testCA.key -sha256 -days 365 -out testCA.crt -config req.cnf -extensions v3_ca -subj "/CN=SocketTools Test CA"
openssl genrsa -out $DOMAIN_NAME.key 2048
openssl req -new -key $DOMAIN_NAME.key -out $DOMAIN_NAME.csr -config req.cnf -extensions v3_req
openssl x509 -req -in $DOMAIN_NAME.csr -CA testCA.crt -CAkey testCA.key -CAcreateserial -out $DOMAIN_NAME.crt -days 365 -sha256 -extfile $DOMAIN_NAME.cnf -extensions v3_req
openssl pkcs12 -export -out $DOMAIN_NAME.pfx -inkey $DOMAIN_NAME.key -in $DOMAIN_NAME.crt -certfile testCA.crt -password pass:testing
#openssl req -x509 -nodes -days 730 -newkey rsa:2048 -keyout $DOMAIN_NAME.key -out $DOMAIN_NAME.crt -config req.cnf -sha256

#-----------NGINX_CONF-----------\\
#mv /home/srcs/abrun.42.fr/abrun.42.fr.conf /etc/nginx/sites-available/
#ln -s /etc/nginx/sites-available/abrun.42.fr.conf /etc/nginx/sites-enabled/abrun.42.fr.conf
mkdir /home/srcs/$DOMAIN_NAME
cat /home/srcs/$DOMAIN_NAME/newDefault > /etc/nginx/sites-available/default
mv /home/srcs/$DOMAIN_NAME /var/www/
echo "0.0.0.0	$DOMAIN_NAME wwww.$DOMAIN_NAME" >> /etc/hosts
service nginx restart
echo NGINX SERVICE STARTED
service nginx start
service nginx configtest

while :
do
	sleep 50
done
