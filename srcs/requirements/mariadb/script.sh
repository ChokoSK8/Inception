#!/bin/bash

service mysql start
echo "CREATE DATABASE $MYSQL_WPDATA_NAME DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci";
echo "CREATE DATABASE $MYSQL_DBDATA_NAME DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci";
echo "CREATE USER '$MYSQL_ROOT_USERNAME'@$DOMAIN_NAME IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'";
echo "CREATE USER '$MYSQL_SCND_USERNAME'@$DOMAIN_NAME IDENTIFIED BY '$MYSQL_SCND_PASSWORD'";
echo "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_ROOT_USERNAME'@$DOMAIN_NAME IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'";
echo "grant all privileges on $MYSQL_WPDATA_NAME.* TO '$MYSQL_SCND_USERNAME'@'$DOMAIN_NAME' IDENTIFIED BY '$MYSQL_SCND_PASSWORD'";
echo "flush privileges";
echo "exit";
envsubst < /home/srcs/my.cnf > /etc/mysql/my.cnf
rm -rf /home/srcs/my.cnf
