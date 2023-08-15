#! /bin/bash

mkdir /var/www/ && mkdir /var/www/html/

cd /var/www/html/ && rm -rf *

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /bin/wp

wp core download --allow-root

sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=mariadb --allow-root

wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WP_ADMIN_USR --admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root

wp user create $WP_USER_USR $WP_USER_EMAIL --role=author --user_pass=$WP_USER_PWD --allow-root

wp theme install astra --activate --allow-root

mkdir /run/php

/usr/sbin/php-fpm7.3 -F
