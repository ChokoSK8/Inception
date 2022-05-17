#!/bin/bash

#-----------CERTIFICATE-----------\\
echo "Generating SSL/TLS certificate"
openssl genrsa -out testCA.key 2048
openssl req -x509 -new -nodes -key testCA.key -sha256 -days 365 -out testCA.crt -config req.cnf -extensions v3_ca -subj "/CN=SocketTools Test CA"
openssl genrsa -out $DOMAIN_NAME.key 2048
openssl req -new -key $DOMAIN_NAME.key -out $DOMAIN_NAME.csr -config req.cnf -extensions v3_req
openssl x509 -req -in $DOMAIN_NAME.csr -CA testCA.crt -CAkey testCA.key -CAcreateserial -out $DOMAIN_NAME.crt -days 365 -sha256 -extfile req.cnf -extensions v3_req
openssl pkcs12 -export -out $DOMAIN_NAME.pfx -inkey $DOMAIN_NAME.key -in $DOMAIN_NAME.crt -certfile testCA.crt -password pass:testing
#openssl req -x509 -nodes -days 730 -newkey rsa:2048 -keyout $DOMAIN_NAME.key -out $DOMAIN_NAME.crt -config req.cnf -sha256

#-----------NGINX_CONF-----------\\
mkdir /home/$DOMAIN_NAME
mv /home/srcs/* /home/$DOMAIN_NAME
mv /home/$DOMAIN_NAME /home/srcs
envsubst < /home/srcs/$DOMAIN_NAME/newDefault > /home/srcs/$DOMAIN_NAME/newDefault
envsubst < /home/srcs/$DOMAIN_NAME/req.cnf > /home/srcs/$DOMAIN_NAME/req.cnf
mv /home/srcs/$DOMAIN_NAME/newDefault /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/newDefault /etc/nginx/sites-enabled/abrun.42.fr.conf
#cat /home/srcs/$DOMAIN_NAME/newDefault > /etc/nginx/sites-available/default
mkdir /var/www/$DOMAIN_NAME
mv /home/srcs/$DOMAIN_NAME/index.html /var/www/$DOMAIN_NAME
echo "0.0.0.0	$DOMAIN_NAME wwww.$DOMAIN_NAME" >> /etc/hosts
service nginx configtest
service nginx restart
