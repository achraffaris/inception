FROM debian:buster

EXPOSE 3306

RUN apt-get update && apt-get install -y mariadb-server

RUN sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf 

COPY ./tools/setup_mariadb.sh ./setup_mariadb.sh

RUN ./setup_mariadb.sh

CMD ["mysqld"]


