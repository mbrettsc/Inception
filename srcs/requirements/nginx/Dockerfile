FROM debian:buster

RUN apt-get update && apt-get install -y nginx openssl

COPY conf/nginx.conf /etc/nginx/conf.d
COPY tools/ /tmp/

ENTRYPOINT [ "./tmp/nginx_script.sh" ]

CMD [ "nginx", "-g", "daemon off;" ]