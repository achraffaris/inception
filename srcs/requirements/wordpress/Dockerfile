FROM debian:buster

EXPOSE 9000

RUN apt update && apt upgrade -y && apt install -y php-fpm php-mysql curl

COPY ./tools/setup_wp.sh .

COPY ./conf/wp-config.php /tmp/wp-config.php

RUN chmod +x setup_wp.sh && ./setup_wp.sh

ENTRYPOINT ["/usr/sbin/php-fpm7.3", "-F"]

