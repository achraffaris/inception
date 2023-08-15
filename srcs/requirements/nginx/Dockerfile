FROM alpine:3.18.3

EXPOSE 443

RUN apk update && apk upgrade && apk add sudo bash openssl nginx

COPY tools/generate_ssl_cert.sh .

RUN bash generate_ssl_cert.sh

COPY ./conf/nginx.conf /etc/nginx/http.d/

ENTRYPOINT ["nginx", "-g", "daemon off;"]