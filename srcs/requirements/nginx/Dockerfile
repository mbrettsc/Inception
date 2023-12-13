FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl

COPY conf/nginx.conf /etc/nginx/conf.d

RUN openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/mbrettsc.42.fr.key -x509 -days 365 -out \
/etc/ssl/mbrettsc.42.fr.crt -subj "/C=TR/ST=Kocaeli/L=Gebze/O=42 School/OU=mbrettsc/CN=mbrettsc.42.fr"

CMD [ "nginx", "-g", "daemon off;" ]