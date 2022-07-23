#!/bin/sh

chmod 775 /run_db.sh

# mv conf
rm /etc/mysql/mariadb.conf.d/50-server.cnf
mv tmp/50-server.cnf /etc/mysql/mariadb.conf.d/

# run mysql
service mysql start
mysql -e "create database wordpress_db;"
mysql -e "create user 'superuser'@'%' identified by '$MYSQL_PASSWORD';"
mysql -e "grant all privileges on *.* to 'superuser'@'%';"
mysql -e "create user '$MYSQL_USER'@'%' identified by '$MYSQL_PASSWORD';"
mysql -e "grant all on wordpress_db.* to '$MYSQL_USER'@'%';"

bash
