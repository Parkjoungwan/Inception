#!/bin/sh

#set right
chmod 775 /run_wp.sh

# starting get wordpress
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
mv /wordpress/* /var/www/html/
chown -R www-data:www-data /var/www/html
rm -r /wordpress latest.tar.gz

# mv conf
rm /var/www/html/wp-config-sample.php
mv tmp/wp-config.php /var/www/html/wp-config.php
rm /etc/php/7.3/fpm/pool.d/www.conf
mv tmp/www.conf /etc/php/7.3/fpm/pool.d/www.conf

# run service
service php7.3-fpm start

bash
