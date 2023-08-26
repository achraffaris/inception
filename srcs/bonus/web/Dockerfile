FROM python:alpine3.18

EXPOSE 8000

RUN apk update && apk add git bash

WORKDIR /app

COPY ./tools/* ./

RUN chmod +x install.sh runserver.sh && ./install.sh

ENTRYPOINT ["./runserver.sh"]