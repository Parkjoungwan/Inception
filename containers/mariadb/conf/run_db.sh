#!/bin/sh

chmod 775 /run_db.sh

# mv conf
rm /etc/mysql/mariadb.conf.d/50-server.cnf
mv tmp/50-server.cnf /etc/mysql/mariadb.conf.d/

# run mysql
service mysql start
mysql < /tmp/dbsql.sql

bash
