#!/bin/bash

#installing wp-cli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

#download wordpress
cd /var/www/html/
wp core download --allow-root
chown -R www-data:www-data /var/www/html/
chmod -R 755 /var/www/html/


sed -i '36 s/\/run\/php\/php7.3-fpm.sock/9000/' /etc/php/7.3/fpm/pool.d/www.conf

#configure wordpress
cp ./wp-config-sample.php ./wp-config.php

sed -i "s|database_name_here|${DB_NAME}|g" ./wp-config.php
sed -i "s|username_here|${DB_USER}|g" ./wp-config.php
sed -i "s|password_here|${DB_PASS}|g" ./wp-config.php
sed -i "s|localhost|${DB_HOST}|g" ./wp-config.php

#install wordpress

wp core install --url=$DOMAIN_NAME --title="My Wordpress Site" --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASS --admin_email=$WP_MAIL --allow-root

# wp user create $WP_USER $WP_USER_MAIL --user_pass=$WP_USER_PASS --role='author' --allow-root