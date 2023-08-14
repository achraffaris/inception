#! /bin/bash

mkdir /var/www/ && mkdir /var/www/html/ && cd /var/www/html/

rm -rf *

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /bin/wp

wp core download --allow-root

mv /tmp/wp-config.php /var/www/html/

sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf


mkdir /run/php



