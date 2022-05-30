#!/bin/bash

#-----------CERTIFICATE-----------\\
echo "Generating SSL/TLS certificate"
envsubst < /home/srcs/req.cnf > tmp.txt
cat < tmp.txt > /home/srcs/req.cnf
rm -rf tmp.txt
cd /home/srcs
#openssl genrsa -out testCA.key 2048
#openssl req -x509 -new -nodes -key testCA.key -sha256 -days 365 -out testCA.crt -config req.cnf -extensions v3_ca -subj "/CN=SocketTools Test CA"
#openssl genrsa -out $DOMAIN_NAME.key 2048
#openssl req -new -key $DOMAIN_NAME.key -out $DOMAIN_NAME.csr -config req.cnf -extensions v3_req
#openssl x509 -req -in $DOMAIN_NAME.csr -CA testCA.crt -CAkey testCA.key -CAcreateserial -out $DOMAIN_NAME.crt -days 365 -sha256 -extfile req.cnf -extensions v3_req
#openssl pkcs12 -export -out $DOMAIN_NAME.pfx -inkey $DOMAIN_NAME.key -in $DOMAIN_NAME.crt -certfile testCA.crt -password pass:testing
#openssl req -x509 -nodes -days 730 -newkey rsa:2048 -keyout $DOMAIN_NAME.key -out $DOMAIN_NAME.crt -config req.cnf -sha256
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $DOMAIN_NAME.key -out $DOMAIN_NAME.crt -config req.cnf

#-----------NGINX_CONF-----------\\
cat < /home/srcs/newDefault > /etc/nginx/sites-available/default

exec "$@"
