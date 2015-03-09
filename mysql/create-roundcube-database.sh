#!/usr/bin/env bash
. /tmp/settings.conf

/usr/sbin/mysqld &
sleep 5
echo "CREATE DATABASE roundcube;GRANT ALL ON roundcube.* TO roundcube@localhost IDENTIFIED BY '"${MYSQLROUNDCUBE}"';FLUSH PRIVILEGES;" | mysql
