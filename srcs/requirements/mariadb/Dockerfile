FROM debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/ /tmp/

ENTRYPOINT [ "/tmp/init_script.sh" ]

CMD [ "mysqld" ]
