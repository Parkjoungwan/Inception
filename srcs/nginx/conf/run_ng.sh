#!/bin/sh

#set right
chmod 775 /run_ng.sh

#get ssl
openssl req -x509 -nodes -days 365 -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=joupark/CN=localhost" -newkey rsa:2048 -keyout /etc/ssl/private/server_pkey.pem -out /etc/ssl/certs/server.crt

# mv conf
rm /etc/nginx/sites-available/default
mv /tmp/default /etc/nginx/sites-available/default
mv /tmp/joupark-42-fr.conf /etc/nginx/sites-available/joupark-42-fr.conf
ln -s /etc/nginx/sites-available/joupark-42-fr.conf /etc/nginx/sites-enabled/joupark-42-fr.conf

# run service
service nginx start

bash
