#!/bin/bash

cd /home/srcs/openssl/
openssl genrsa -out testCA.key 2048
openssl req -x509 -new -nodes -key testCA.key -sha256 -days 365 -out testCA.crt -config abrun.42.fr.cnf -extensions v3_ca -subj "/CN=SocketTools Test CA"
openssl genrsa -out abrun.42.fr.key 2048
openssl req -new -key abrun.42.fr.key -out abrun.42.fr.csr -config abrun.42.fr.cnf -extensions v3_req
openssl x509 -req -in abrun.42.fr.csr -CA testCA.crt -CAkey testCA.key -CAcreateserial -out abrun.42.fr.crt -days 365 -sha256 -extfile abrun.42.fr.cnf -extensions v3_req
openssl pkcs12 -export -out abrun.42.fr.pfx -inkey abrun.42.fr.key -in abrun.42.fr.crt -certfile testCA.crt -password pass:testing
#openssl req -x509 -nodes -days 730 -newkey rsa:2048 -keyout abrun.42.fr.key -out abrun.42.fr.crt -config abrun.42.fr.cnf -sha256
