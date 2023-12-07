FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl

COPY conf/nginx.conf /etc/nginx/conf.d

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/ssl/mbrettsc.42.fr.pem -keyout /etc/ssl/mbrettsc.42.fr.key -subj "/C=TR/ST=Kocaeli/L=Gebze/O=42 School/OU=mbrettsc/CN=mbrettsc.42.fr"

CMD [ "nginx", "-g", "daemon off;" ]