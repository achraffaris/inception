FROM debian:buster
ARG DB_USER DB_NAME DB_PASSWORD

ENV DB_USER $DB_USER
ENV DB_NAME $DB_NAME
ENV DB_PASSWORD $DB_PASSWORD

EXPOSE 3306

RUN apt-get update && apt-get install -y mariadb-server

RUN sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf 

COPY ./tools/setup_mariadb.sh ./setup_mariadb.sh

RUN ./setup_mariadb.sh

ENTRYPOINT ["mysqld_safe"]

