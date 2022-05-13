#!/bin/bash
./home/srcs/openssl/script.sh
./home/srcs/abrun.42.fr/script.sh
echo NGINX SERVICE STARTED
service nginx start
service nginx configtest
