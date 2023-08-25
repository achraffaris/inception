FROM debian:buster

EXPOSE 9000

RUN apt-get update && apt-get upgrade -y && apt-get install -y php-fpm php-mysql curl mariadb-client

COPY ./tools/setup_wp.sh .

RUN chmod +x setup_wp.sh

CMD ["./setup_wp.sh"]

